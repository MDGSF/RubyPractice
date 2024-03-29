# p015elsifex.rb
# elseif example

# Original example
puts "Hello, what's your name?"
STDOUT.flush
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Satish'
  puts 'What a nice name!!'
else
  if name == 'Sunil'
    puts 'Another nice name!'
  end
end

# Modified example with elseif
puts "Hello, what's your name?"
STDOUT.flush
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Satish'
  puts 'What a nice name!!'
elsif name == 'Sunil'
  puts 'Another nice name!'
end

# Further Modified
puts "Hello, what's your name?"
STDOUT.flush
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Satish' || name == 'Sunil'
  puts 'What a nice name!!'
end
