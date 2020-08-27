# 入力は以下のフォーマットで与えられます。

# N V
# t_1 p_1
# t_2 p_2
# ...
# t_N p_N
# ・1 行目に観測地点の数 N と 制限速度 V が整数でスペース区切りで与えられます。
# ・続く N 行のうちの i 行目 (1 ≦ i ≦ N) には、i 番目の観測データにおける時刻 t_i と、位置 p_i がこの順に整数で半角スペース区切りで与えられます。
# ・入力は N + 1 行で終わり、最後に改行が入ります。

# 区間の平均速度が制限速度を越えている場合は "YES"、そうでない場合は "NO" を出力してください。

# 出力の最後に改行を入れ、余計な文字、空行を含んではいけません。

N,V = gets.split(' ').map(&:to_i)

a = 0
count = 0
N.times do
  t,p = gets.split(' ').map(&:to_i)
  speed = p - a
  if speed > V
    count += 1
  end
  a = p
end

if count != 0
  puts 'YES'
else
  puts 'NO'
end
