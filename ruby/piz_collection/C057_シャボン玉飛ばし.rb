# 入力は以下のフォーマットで与えられます。

# T x y
# a_1 b_1
# a_2 b_2
# ...
# a_T b_T
# ・1 行目に、風が吹く時刻の長さを表す整数 T、シャボン玉の最初の x 座標を表す整数 x、シャボン玉の最初の y 座標を表す整数 y がこの順で半角スペース区切りで与えられます。
# ・続く T 行のうちの i 行目 (1 ≦ i ≦ T) には、時刻 i - 1 と時刻 i の間に吹く風の情報を表す整数 a_i, b_i がこの順で半角スペース区切りで与えられます。
# ・入力は合計で T + 1 行となり、入力値最終行の末尾に改行が 1 つ入ります。

# シャボン玉が通った x 座標の最大値を整数で出力してください。

# 出力の最後に改行を入れ、余計な文字、空行を含んではいけません。

T,x,y = gets.split(' ').map(&:to_i)

places = []
T.times do
  place = {}
  place[:X] = 0
  place[:Y] = 0
  a,b = gets.split(' ').map(&:to_i)
  place[:X] += a
  place[:Y] += b
  places << place
end

count = []
places.each do |place|
  xs = 0
  if y + place[:Y] <= 0
    break
  else
    xs = x + place[:X]
    count << xs
  end
end

puts count.max

# 配列、ハッシュと条件分岐、break文
# ※出力できるのになぜか０点
