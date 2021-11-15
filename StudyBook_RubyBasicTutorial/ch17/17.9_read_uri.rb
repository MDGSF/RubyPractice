require "open-uri"

URI.open("http://www.ruby-lang.org/zh_ch/") do |io|
  puts io.read
end

filename = "ruby-2.3.0.tar.gz"
url = "ftp://www.ruby-lang.org/pub/ruby/2.3/#{filename}"
open(url) do |io|
  File.binwrite(filename, io.read)
end

