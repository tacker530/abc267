# C - Index × A(Continuous ver.)
N,M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

max_index = A.index(A.max) 
if max_index < M then
  max_index = M - 1
end
p max_index
p first_index = max_index - M + 1 


sum = 0 
A[first_index..max_index].each_with_index do |a,i|
  sum += a*(i+1)
end
puts sum


dp=Array.new(N+1,Array.new(M+1,0))
pp dp

dp.each_with_index do |row,i|
  if i == 0 then
    dp[0][0] = 0
    next 
  end
  row.each_with_index do |col, j|
    dp[i][j] += ( dp[i-1][j-1] + A[i-1]* j )
    puts "dp[#{i}][#{j}] = #{dp[i][j]}"
  end
end

pp dp[M-1][N-1]
