# 入力は以下のフォーマットで与えられます。

# N K P
# s_1 s_2 ... s_N
# ・1 行目に辞書に載せる単語の数を表す整数 N、1 ページに掲載する単語の数 K、調べたいページの番号 P が与えられます。
# ・2 行目に N 個の文字列が半角スペース区切りで与えられます。i 番目 (1 ≦ i ≦ N) の文字列 s_i は辞書に載る i 番目の単語を表します。
# ・入力は合計で 2 行となり、入力値最終行の末尾に改行が １ つ入ります。

# P ページ目に掲載される単語(最高で K 個)を順番に 1 行ずつ出力してください。

# 出力の最後に改行を入れ、余計な文字、空行を含んではいけません。

N,K,P = gets.split(' ').map(&:to_i)
words = gets.split(' ')

dictionary = []
sort_words = words.sort{|a,b| a <=> b }
sort_words.each do |s|
  page = sort_words.slice!(0..K - 1)
  dictionary << page
  if sort_words.length < K - 1
    dictionary << sort_words
  end
end

puts dictionary[P - 1]

# 配列のソートと指定数での抽出