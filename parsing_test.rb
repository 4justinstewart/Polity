upcoming = File.open(Dir.pwd + "/db/upcoming_legislation.txt", "r")

all_legislations = []
legislation = []
introduced_legislation = []

upcoming.each_line do  |line|
    legislation << line.chomp
  if legislation.length >= 7
    all_legislations << legislation
    legislation = []
  end
end


all_legislations.each do |info|
  introduced_legislation << Hash[all_legislations[0].zip(info)]
end

introduced_legislation.shift
introduced_legislation



