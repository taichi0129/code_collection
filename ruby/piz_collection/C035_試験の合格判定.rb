# 入力は以下のフォーマットで与えられます。

# N
# t_1 e_1 m_1 s_1 j_1 g_1 
# t_2 e_2 m_2 s_2 j_2 g_2
# ...
# t_N e_N m_N s_N j_N g_N
# ・1 行目には受験者の人数を表す整数 N が与えられます。
# ・続く N 行のうち i 行目 (1 ≦ i ≦ N) には受験者の文理の区分を表す文字 t_i と、英語、数学、理科、国語、地理歴史の点数を表す整数 e_i, m_i, s_i, j_i, g_i がこの順に半角スペース区切りで与えられます。
# ・t_i について文系は "l" ("L" の小文字)、理系は "s" で表されます。
# ・入力は合計で N + 1 行となり、入力値最終行の末尾に改行が１つ入ります。

# paiza 大学の入試の2段階選抜を何人通過できるかを整数で 1 行に出力してください。

# 最後は改行し、余計な文字、空行を含んではいけません。

N = gets.to_i
count = 0

N.times do
  score = gets.split(' ')
  totalscore = 0
  i = 1
  while i <= 5
    totalscore += score.slice(i).to_i
    i += 1
  end
  if score.slice(0) == "l" && totalscore >= 350
    count += 1 if score.slice(4).to_i + score.slice(5).to_i >= 160
  elsif score.slice(0) == "s" && totalscore >= 350
    count += 1 if score.slice(2).to_i + score.slice(3).to_i >= 160
  end
end

puts count


# メソッドを定義した場合のコーディングの仕方
# 条件分岐と配列からの文字列抽出、計算