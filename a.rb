# A - Saturday
  weekday = [ "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

S = gets.chomp

thisday = 0 
weekday.each_with_index do |w,i|
  if w == S then
    thisday = i
  end
end
puts weekday.size - thisday