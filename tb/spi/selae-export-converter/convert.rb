#Converts a selae export to VHDL stimulus.
# Export settings must be as follows:
#   Export format: CSVV
#   Include Column Headings
#   Comma Delimited
#   use timestamps [s]
#   Output one column for every bit
#   output on row per change

require 'csv'

ret = ""

CSV.foreach(ARGV.first, headers: true) do |row|
  row = row.to_hash
  puts

  current_time = row.fetch("Time[s]")
  puts "  if now < #{current_time} sec then\n    wait for #{current_time} sec - now;\n  end if;\n"
  
  row.each_pair.to_a.drop(1).each do |k, v|
    puts "  #{k.strip} <= '#{v.strip}';\n"
  end
end
