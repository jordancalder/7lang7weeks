(1..16).each do |i|
    puts "#{i - 3}, #{i - 2}, #{i - 1}, #{i}" if i % 4 == 0
end

(1..16).each_slice(4) { |a| puts a }
