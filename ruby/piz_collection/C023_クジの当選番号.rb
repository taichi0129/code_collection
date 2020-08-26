# 入力は以下のフォーマットで与えられます。

# a_0 b_0 c_0 d_0 e_0 f_0
# N
# a_1 b_1 c_1 d_1 e_1 f_1
# a_2 b_2 c_2 d_2 e_2 f_2
# ...
# a_N b_N c_N d_N e_N f_N
# ここで、1 行目はくじの当選番号 6 つ、2 行目の N はあなたの購入したくじの枚数を表す整数とします。
# a_i, b_i, c_i, d_i, e_i, f_i (1 ≦ i ≦ N) は i 番目のくじの数字です。

# それぞれのくじについて、当選番号と一致する数字の数を答えてください。

# 最後は改行し、余計な文字、空行を含んではいけません。

numbers = gets.split(' ')
N = gets.to_i

cards = []
N.times do
  card = gets.split(' ')
  cards << card
end


cards.each do |card|
  count = 0
  numbers.each do |number|
    if card.count(number) == 1
      count += 1
    end
  end
  puts count
end

# 繰り返し文のネスト