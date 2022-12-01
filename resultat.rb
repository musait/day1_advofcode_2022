file = File.open("input.txt")
file_data = file.read

inventory = file_data.split("\n")


total_calories_per_elf = []
total = 0
inventory.each do |calorie|
  if calorie == ""
    total_calories_per_elf << total
    total = 0
  else
    total += calorie.to_i
  end
end
print total_calories_per_elf.sort.reverse.first(3).sum