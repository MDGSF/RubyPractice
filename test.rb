#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

BEGIN {
	puts "initialize the program."
}

END {
	puts "end of the program."
}

print <<EOF
	first line
sedn lie
EOF

print <<"EOF";
  the same as above.
EOF

print <<`EOC`
	echo hi there
	echo lo there
EOC

print <<"foo", <<"bar"
	I said foo.
foo
	I said bar.
bar

# this is a commnet.
name = "huangjian" # this is also a comment

=begin
multiline comments.
multiline comments.
multiline comments.
multiline comments.
=end

a = 123
b = 1234
c = 1_234
d = 1_234_5
e = 1_2_3_4_5
f = 0xa

puts a, b, c, d, e, f

puts 2**(1/4)
puts 16**(1/4.0)


puts "multiple: #{24*60*60}"


name = "Ruby"
puts name
puts "#{name+",ok"}"


ary = [ "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
	puts i
end

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
	print key, " is ", value, "\n"
end

(10..15).each do |n|
	print n, ' '
end
print "\n"

(10...15).each do |n|
	print n, ' '
end
print "\n"

class Sample
	def hello
		puts "Hello Ruby!"
	end
end
object = Sample. new
object.hello


class Customer
	@@no_of_customers=0
	def initialize(id, name, addr)
		@cust_id=id
		@cust_name=name
		@cust_addr=addr
	end

	def display_details()
		puts "Customer id #@cust_id"
		puts "Customer name #@cust_name"
		puts "Customer address #@cust_addr"
	end

	def total_no_of_customers()
		@@no_of_customers += 1
		puts "Total number of customers: #@@no_of_customers"
	end
end

cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, khandala")

cust1.display_details()
cust1.total_no_of_customers()

cust2.display_details()
cust2.total_no_of_customers()



$global_variable = 10

class Class1
	def print_global
		puts "global in class1 output #$global_variable"
	end
end

class Class2
	def print_global
		puts "global in class2 output #$global_variable"
	end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global

class Example
	VAR1 = 100
	VAR2 = 200
	def show
		puts "#{__FILE__} #{__LINE__} first constant is #{VAR1}"
		puts "second constant is #{VAR2}"
	end
end
object = Example.new()
object.show

puts defined? variable
foo=42
puts defined? foo
puts defined? $_
puts defined? bar


MR_COUNT = 0
module Foo
	MR_COUNT = 0
	::MR_COUNT = 1
	MR_COUNT = 2
end
puts MR_COUNT
puts Foo::MR_COUNT

x = 2
if x >= 2
	puts "x >= 2"
elsif x < 2 and x != 0
	puts "x = 1"
else
	puts "x = #{x}"
end

$debug = 1
print "debug\n" if $debug


$var = 1
print "1111111111111" if $var
print "2222222222222" unless $var
print "\n"

$var = false
print "33333" unless $var
print "\n"


$age = 5
case $age
when 0 .. 2
	puts "0~2"
when 3 .. 6
	puts "3~6"
when 7 .. 12
	puts "7~12"
else
	puts "other"
end


foo = false
bar = true
quu = false

case 
when foo then puts "foo is true"
when bar then puts "bar is true"
when quu then puts "quu is true"
end


$i = 0
$num = 5
while $i < $num do
	puts("while i = #$i")
	$i += 1
end
puts

$i = 0
$num = 5
begin
	puts("while i = #$i")
	$i += 1
end while $i < $num
puts

$i = 0
$num = 5
until $i > $num do
	puts("until i = #$i")
	$i += 1;
end
puts

for i in 0..5
	puts "for i = #{i}"
end
puts

for i in 0..5
	if i > 2 then
		break
	end
	puts "for local i = #{i}"
end
puts

for i in 0..5 
	if i < 2 then
		next
	end
	puts "for local i = #{i}"
end
puts

def test(a1="Ruby", a2="Perl")
	puts "#{a1}"
	puts "#{a2}"
end
test "C"
test "C", "C++"
test

def sample (*test)
	puts "parameters num is #{test.length}"
	for i in 0...test.length
		puts "parameter[#{i}] = #{test[i]}"
	end
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"


def test
	puts "111111"
	yield
	puts "22222"
	yield
end
test {puts "aaaaaa"}








