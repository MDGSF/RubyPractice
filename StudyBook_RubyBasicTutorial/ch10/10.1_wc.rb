ltotal = 0 # 行数
wtotal = 0 # 单词数
ctotal = 0 # 字符数

ARGV.each do |file|
  begin
    input = File.open(file)
    l = 0
    w = 0
    c = 0
    input.each_line do |line|
      l += 1
      c += line.size
      line.sub!(/^\s+/, "") # 删除行首的空白符
      ary = line.split(/\s+/) # 用空白符切割
      w += ary.size
    end
    input.close
    printf("%8d %8d %8d %s\n", l, w, c, file)
    ltotal += l
    wtotal += w
    ctotal += c
  rescue => ex
    print ex.message, "\n" # 输出异常信息
  end
end

printf("%8d %8d %8d %s\n", ltotal, wtotal, ctotal, "total")
