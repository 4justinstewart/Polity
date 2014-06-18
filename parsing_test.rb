upcoming = File.open(Dir.pwd + "/db/upcoming_legislation.txt.rtf", "r")

all_legislations = []
legislation = []

upcoming.each_line do  |line|
  puts "#{line}"
  legislation << line
  if legislation.length >= 6
    puts "yes"
    all_legislations << legislation
    p
  end
end

all_legislations.each do |x|
  p x
end
