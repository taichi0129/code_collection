# 入力は以下のフォーマットで与えられます。
# Q
# N_1
# ...
# N_Q
# 1行目には判定したい整数の個数 Q が入力されます。続く Q 行には整数 N_1, ..., N_Q が入力されます。

# 各 N_i に対して

# ・N_i が完全数であれば "perfect"
# ・N_i がほぼ完全数であれば "nearly"
# ・どちらでもなければ "neither"

# と 1 行に出力してください。

# 最後は改行し、余計な文字、空行を含んではいけません。

def divisor(num)
  result = []
  i = 1
  while i < num do
      reminder = num % i
      result << i if reminder == 0
      i += 1
  end
  return result
end

Q = gets.to_i
count = 1
while count <= Q do
  num = gets.to_i
  r = divisor(num)
  if num  == r.sum
      puts "perfect"
  elsif num - r.sum == 1 || r.sum - num == 1
      puts "nearly"
  else
      puts "neither"
  end
  count += 1
end

# 約数の出し方と、完全数、ほぼ完全数の出し方