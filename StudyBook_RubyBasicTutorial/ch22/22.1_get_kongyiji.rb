require "open-uri"

url = "https://www.ituring.com.cn/article/274457"
filename = "kongyiji.html"

File.open(filename, "wb") do |f|
  text = URI.open(url, "r:utf-8").read
  f.write text
end
