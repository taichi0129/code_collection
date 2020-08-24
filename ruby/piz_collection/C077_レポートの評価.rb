# 入力は以下のフォーマットで与えられます。

# k n
# d_1 a_1
# d_2 a_2
# ...
# d_k a_k
# ・1 行目に学生の人数を表す整数 k、レポートの問題数を表す整数 n がこの順に半角スペース区切りで与えられます。
# ・続く k 行のうちの i 行目 (1 ≦ i ≦ k) には、i 番目の学生のレポートを提出した日を表す整数 d_i、i 番目の学生が正解した問題数を表す整数 a_i がこの順に半角スペース区切りで与えられます。
# ・入力は合計で k + 1 行となり、入力値最終行の末尾に改行が 1 つ入ります。

# ・各学生のレポートの評価を以下の形式で出力してください。
# e_1
# e_2
# ...
# e_k
# ・期待する出力は k 行からなります。
# ・i 行目 (1 ≦ i ≦ k) にはそれぞれ i 番目の学生のレポートの評価を表す英大文字 e_i を出力してください。出力の最後に改行を入れ、余計な文字、空行を含んではいけません。
# ・出力最終行の末尾に改行を入れ、余計な文字、空行を含んではいけません。

k,n = gets.split(' ').map(&:to_i)
results = []

k.times do
    score = 0
    day,ans = gets.split(' ').map(&:to_i)
    score = ans * (100 / n)
    if day >= 1 && day < 10
        score = (80 * score) / 100
    elsif day >= 10
        score = 0
    else
        score = score
    end
    results << score
end

results.each do |r|
  if r >= 80
    puts "A"
  elsif r >= 70 && r < 80
    puts "B"
  elsif r >= 60 && r < 70
    puts "C"
  else
    puts "D"
  end
end

# メソッドを定義した場合のコーディングの仕方
# 条件分岐と変数の計算