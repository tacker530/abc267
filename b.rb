# B - Split?
S = gets.chomp.chars.map(&:to_i)
cols = []
cols[0] = [ S[7 - 1] ,0]
cols[1] = [ S[4 - 1] ,0]
cols[2] = S[2 - 1],S[8 - 1]
cols[3] = S[1 - 1],S[5 - 1]
cols[4] = S[3 - 1],S[ 9 - 1]
cols[5] = [ S[6 - 1] ,0]
cols[6] = [ S[10 - 1] ,0]

if S[0] != 0 then
  puts "No"
  exit
end 

checkstring = ""
cols.each_with_index do |c,i|
  if c.include?(1) then
   # puts "#{i} = 〇"
    checkstring += "1"
  else
   # puts "#{i} = ×"
    checkstring += "0"
  end 
end

if checkstring.match(/.*1+0+1.*/) then
  puts "Yes"
else
  puts "No"
end
