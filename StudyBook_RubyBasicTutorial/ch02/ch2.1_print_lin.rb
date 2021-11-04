names = [ "小林", "林", "小红", "小白" ]
names.each do |name|
  if /林/ =~ name
    puts name
  end
end
