# 入力は以下のフォーマットで与えられます。

# n
# s_1 e_1 h_1 l_1
# ...
# s_n e_n h_n l_n
# 1 行目には、日数 n が与えられます。
# 続く n 行の各行では、1 日間の 4 種類の株価のデータが与えられます。
# s_i は始値、e_i は終値、h_i は高値、l_i は安値を表しています。

# n 日間の始値、終値、高値、安値を 1 つの半角スペース区切りで1行に出力してください。

# 最後は改行し、余計な文字、空行を含んではいけません。

n = gets.to_i

stocks = []
n.times do
  stock = gets.split(' ').map(&:to_i)
  stocks << stock
end
first = stocks.transpose[0].first
last = stocks.transpose[1].last
max = stocks.transpose[2].max
min = stocks.transpose[3].min

puts "#{first} #{last} #{max} #{min}"

# 二次元配列の取り出し方