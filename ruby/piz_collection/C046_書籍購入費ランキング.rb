# 入力は以下のフォーマットで与えられます。

# N
# s_1 s_2 ... s_N
# M
# o_1 p_1
# o_2 p_2
# ...
# o_M p_M
# ・1 行目に、エンジニアの人数 N が整数で与えられます。
# ・2 行目に、半角英小文字で構成される文字列が N 個スペース区切りで与えられます。
# ・i 番目 (1 ≦ i ≦ N) の文字列 s_i は、i 番目のエンジニアの名前です。
# ・3 行目に、エンジニアたちが購入した本の数 M が整数で与えられます。
# ・4 行目から続く M 行には、購入した人の名前を表す半角英小文字で構成される文字列 oj と
# 　その本の金額を表す整数 pj がこの順にスペース区切りで与えられます。
# ・入力は合計で M + 3 行となり、入力値最終行の末尾に改行が１つ入ります。

# 書籍購入費でエンジニアをランキングした際の並び順を以下のフォーマットで出力してください。

# t_1
# t_2
# ...
# t_N
# ・1 行目からつづく N 行に、書籍購入費が高い人順に並べた時の i 番目の人の名前 t_i を出力して下さい。
# ・N 行目の出力の最後に改行を入れ、余計な文字、空行を含んではいけません。

members = []
N = gets.to_i
names = gets.split(' ')
names.each do |name|
  member = {name: name, cost: 0}
  members << member
end

M = gets.to_i

M.times do
  O,P = [gets.split].map{|a,b| [a,b.to_i]}.flatten
  members.each do |member|
    member[:cost] += P if O == member[:name]
  end
end
members_rank = members.sort_by! { |a| a[:cost] }.reverse
members_rank.each do |m|
  puts m[:name]
end

# 配列とハッシュ、ハッシュの並び替え