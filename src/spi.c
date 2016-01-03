/*
 * SPI testing utility (using spidev driver)
 *
 * Copyright (c) 2007  MontaVista Software, Inc.
 * Copyright (c) 2007  Anton Vorontsov <avorontsov@ru.mvista.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License.
 *
 * Cross-compile with cross-gcc -I/path/to/cross-kernel/include
 */

#include <string.h>
#include <ctype.h>
#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <getopt.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/types.h>
#include <linux/spi/spidev.h>

static void pabort(const char *s)
{
  perror(s);
  abort();
}

static const char *device = "/dev/spidev0.0";
static uint8_t mode;
static uint8_t bits = 8;
static uint32_t speed = 500000;
static uint16_t delay;
//static uint32_t block_size_bytes = 1;
static char* transfer_file = NULL;
static bool print_received_data = false;
static bool read_from_stdin = false;

static void low_level_transfer(int fd, unsigned tx_rx_size, uint8_t * tx, uint8_t * rx)
{
  struct spi_ioc_transfer tr = {
    .tx_buf = (unsigned long)tx,
    .rx_buf = (unsigned long)rx,
    .len = tx_rx_size,
    .delay_usecs = delay,
    .speed_hz = speed,
    .bits_per_word = bits,
  };

  int ret = ioctl(fd, SPI_IOC_MESSAGE(1), &tr);
  if (ret < 1)
    pabort("can't send spi message");
}

static void print_data(uint8_t * buf, uint32_t bytes_read)
{
  static uint8_t remaining_bytes = 0;
  //printf("bytes read: %u\n", bytes_read);
  for (int i = 0; i <= bytes_read; i++ ) {
    //    if (remaining_bytes == 0 ) {
    //      remaining_bytes = buf[i];
    //      //printf("new remaining bytes: %u\n", remaining_bytes);
    //    } else {
    //      remaining_bytes -= 1;
    putchar(buf[i]);
    //    }
  }
}

static void transfer(int fd, FILE* transfer_fd)
{
  uint8_t transfer_block_size = 4;
  uint8_t * tx = malloc(transfer_block_size + 1);
  uint8_t * tx_data_start = tx + 1;
  
  uint8_t * rx = malloc(transfer_block_size + 1);
  

  if (rx == NULL || tx == NULL) pabort("couldn't allocate enough memory");

  //main loop
  uint32_t bytes_read;
  bool file_read_completed = false;
  for (;;) {
    if (!file_read_completed) {
      bytes_read = fread(tx_data_start, 1, transfer_block_size, transfer_fd);
      tx[0] = (uint8_t)bytes_read;
      if (bytes_read == 0) {
	file_read_completed = true;
	//puts("file read completed");
	memset(tx, 0, transfer_block_size + 1);
	bytes_read = transfer_block_size;
      }
    }
    
    low_level_transfer(fd, bytes_read + 1, tx, rx);
    for (int i = 0; i < bytes_read + 1; i++) {
      //putchar(tx[i]);
    }
    
    //print rx buffer
    if (print_received_data) {
      print_data(rx, bytes_read + 1);
    }
    
  }

  free(tx);
  free(rx);
  puts("");
}

static void print_usage(const char *prog)
{
  printf("Usage: %s [-DsbdlHOLC3]\n", prog);
  puts("  -D --device   device to use (default /dev/spidev0.0)\n"
       "  -s --speed    max speed (Hz)\n"
       "  -d --delay    delay (usec)\n"
       "  -b --bpw      bits per word \n"
       //"  -B --block    transfer block size"
       "  -l --loop     loopback\n"
       "  -H --cpha     clock phase\n"
       "  -O --cpol     clock polarity\n"
       "  -L --lsb      least significant bit first\n"
       "  -C --cs-high  chip select active high\n"
       "  -3 --3wire    SI/SO signals shared\n"
       );
  exit(1);
}

static void parse_opts(int argc, char *argv[])
{
  while (1) {
    static const struct option lopts[] = {
      { "device",    1, 0, 'D' },
      { "speed",     1, 0, 's' },
      { "delay",     1, 0, 'd' },
      { "bpw",       1, 0, 'b' },
      //{ "block",     1, 0, 'B' },
      { "file",      1, 0, 'F' },
      { "loop",      0, 0, 'l' },
      { "cpha",      0, 0, 'H' },
      { "cpol",      0, 0, 'O' },
      { "recdat",    0, 0, 'P' },
      { "setness",   0, 0, 'Q' },
      { "lsb",       0, 0, 'L' },
      { "cs-high",   0, 0, 'C' },
      { "3wire",     0, 0, '3' },
      { "no-cs",     0, 0, 'N' },
      { "ready",     0, 0, 'R' },
      { "fom_stdin", 0, 0, 'Z' },
      { NULL, 0, 0, 0 },
    };
    int c;

    c = getopt_long(argc, argv, "D:s:d:b:B:F:lHOLC3NRQPZ", lopts, NULL);

    if (c == -1)
      break;

    switch (c) {
    case 'D':
      device = optarg;
      break;
    case 's':
      speed = atoi(optarg);
      break;
    case 'd':
      delay = atoi(optarg);
      break;
    case 'b':
      bits = atoi(optarg);
      break;
    //case 'B':
    //  block_size_bytes = atoi(optarg);
    //  break;
    case 'F':
      transfer_file = optarg;
      break;
    case 'l':
      mode |= SPI_LOOP;
      break;
    case 'H':
      mode |= SPI_CPHA;
      break;
    case 'O':
      mode |= SPI_CPOL;
      break;
    case 'P':
      print_received_data = true;
      break;
    case 'L':
      mode |= SPI_LSB_FIRST;
      break;
    case 'C':
      mode |= SPI_CS_HIGH;
      break;
    case '3':
      mode |= SPI_3WIRE;
      break;
    case 'N':
      mode |= SPI_NO_CS;
      break;
    case 'R':
      mode |= SPI_READY;
      break;
    case 'Z':
      read_from_stdin = true;
      break;
    default:
      print_usage(argv[0]);
      break;
    }
  }
}

int main(int argc, char *argv[])
{
  int ret = 0;
  int fd;

  parse_opts(argc, argv);

  fd = open(device, O_RDWR);
  if (fd < 0)
    pabort("can't open device");

  
  FILE * transfer_fd;
  if (read_from_stdin) {
    transfer_fd = stdin;
  } else {
    transfer_fd = fopen(transfer_file, "rb");
    if (transfer_fd == NULL) pabort("Couldn't open transfer file");
  }

  /*
   * spi mode
   */
  ret = ioctl(fd, SPI_IOC_WR_MODE, &mode);
  if (ret == -1)
    pabort("can't set spi mode");

  ret = ioctl(fd, SPI_IOC_RD_MODE, &mode);
  if (ret == -1)
    pabort("can't get spi mode");

  /*
   * bits per word
   */
  ret = ioctl(fd, SPI_IOC_WR_BITS_PER_WORD, &bits);
  if (ret == -1)
    pabort("can't set bits per word");

  ret = ioctl(fd, SPI_IOC_RD_BITS_PER_WORD, &bits);
  if (ret == -1)
    pabort("can't get bits per word");

  /*
   * max speed hz
   */
  ret = ioctl(fd, SPI_IOC_WR_MAX_SPEED_HZ, &speed);
  if (ret == -1)
    pabort("can't set max speed hz");

  ret = ioctl(fd, SPI_IOC_RD_MAX_SPEED_HZ, &speed);
  if (ret == -1)
    pabort("can't get max speed hz");

  /* printf("spi mode: %d\n", mode); */
  /* printf("bits per word: %d\n", bits); */


  /* if (speed > 1000 * 1000) { */
  /*   printf("max speed: %.3g MHz\n", (double)speed/1000.0/1000.0); */
  /* }  else if (speed > 1000) { */
  /*   printf("max speed: %.3g KHz\n", (double)speed/1000.0); */
  /* } else { */
  /*   printf("max speed: %d Hz\n", speed); */
  /* } */


  transfer(fd, transfer_fd);

  close(fd);
  fclose(transfer_fd);

  return ret;
}
