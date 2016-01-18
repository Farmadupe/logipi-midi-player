require 'csv'
require 'bigdecimal'

Row = Struct.new :time, :clock, :enable, :mosi

def go
  rows = []
  row = Row.new
  File.read("top_tb.vhd").each_line do |line|
    if line.include? "then"
      rows << row
      row = Row.new
      next
    end

    if line.include? "wait for" then
      row.time = (BigDecimal.new(line[/\d\.\d+/].to_f - 4.366, 12) / BigDecimal.new(70, 12))
      next
    end

    if line.include? "CLOCK" then
      row.clock = line[/1|0/]
      next
    end

    if line.include? "ENABLE"
      row.enable = line[/1|0/]
      next
    end

    if line.include? "MOSI"
      row.mosi = line[/1|0/]
      next
    end
  end

  File.write "times.txt", rows.map(&:time).map {|r| "#{(r * 1_000_000_000_000).to_s("10F").gsub(" ", "")} ps"}.join("\n")

  File.write "enable.txt", rows.map(&:enable).join("\n")

  File.write "clock.txt", rows.map(&:clock).join("\n")

  File.write "mosi.txt", rows.map(&:mosi).join("\n")
end


go
