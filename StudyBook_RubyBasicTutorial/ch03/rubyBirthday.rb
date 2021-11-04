require 'date'

days = Date.today - Date.new(1993, 2, 24)
puts(days.to_i) # ruby 从 1993 年到今天的天数
