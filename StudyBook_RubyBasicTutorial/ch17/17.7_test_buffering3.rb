filename = "buffering.txt"
File.open(filename, "w") do |file|
  file.sync = true
  3.times do |i|
    file.write("a" * 5)
    puts "第#{i+1}次: #{File.size(filename)}"
  end
end
puts "结束后: #{File.size(filename)}"
p File.read(filename)
