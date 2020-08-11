# 下記内容ができるようにプログラミングせよ
# > 二桁の整数を入力してください
# > 15

# 1 + 5と 1 * 5をそれぞれ計算

# > 足し算結果と掛け算結果の合計値は11です

# 【関数で定義した場合】
def addition(a, b)
  a + b
end

def multiplication(a,b)
  a * b
end

def slice_num(num)
  # 10の位
  tens_place = (num / 10) % 10
  # 1の位
  ones_place = (num / 1) % 10
  return tens_place, ones_place
end

puts "二桁の整数を入力してください"
input = gets.to_i
X, Y = slice_num(input)
add_result = addition(X, Y)
multiple_result = multiplication(X, Y)
puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"



# 関数で定義しない場合
num = gets.to_i

a = (num / 10) % 10
b = (num / 1) % 10
result = (a + b) + (a * b)

puts "足し算結果と掛け算結果の合計値は#{result}です"
