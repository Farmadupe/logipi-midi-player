require 'csv'
require 'bigdecimal'

BD = BigDecimal


def gogo
  # us
  start_cutoff_us = 4_524_600
  #start_cutoff_us = 0
  start_cutoff = (BD.new(start_cutoff_us, 15) / BD.new(1_000_000, 15))

  row1_done = false
  attrs = []
  files = {}
  CSV.foreach "untitled.csv" do |row|
    if not row1_done
      row.map!(&:strip)
      attrs = [:time] + row.drop(1)
      attrs.map!(&:to_sym)

      attrs.map {|attr| files[attr] = File.open("#{attr.to_s}.txt", "w")}
        
      row1_done = true
    else
      #process rows normally
      row[0] = BigDecimal.new(row.first, 15)
      
      next if row[0] - start_cutoff < 0 
      
      attrs.zip(row).each do |attr, val|
        if attr == :time
          val = "#{((val - start_cutoff) * 1_000_000_000_000).to_s("10F").gsub(" ", "")} ps"
        end
        files[attr].puts val
      end
    end
    files.each_value.map &:flush
  end
  files.each_value.map &:close
end


gogo
