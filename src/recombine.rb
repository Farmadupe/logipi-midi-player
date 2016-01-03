str = File.binread(ARGV.first).chars.to_a

until str.length.zero?
  length = str.shift.ord
  print str.shift(length).join
end
