# encoding: UTF-8

sum = 0
file = File.new("tz.txt", "r")
while (line = file.gets)
  line.force_encoding("UTF-8") if line
  line.match /(\d+)/
  sum += $1.to_i if $1
end
file.close
puts sum