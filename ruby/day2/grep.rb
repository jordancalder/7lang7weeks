def grep(file, search)
  File.open(file) do |f|
    f.each_line.with_index { |line, index| puts "#{index}: #{line}" if line =~ /#{search}/ }
  end
end

grep(ARGV[1], ARGV[0])
