# 入力は以下のフォーマットで与えられます。

# N
# S
# ・1 行目には、ずらした文字数を表す整数 N が与えられます。
# ・続く 1 行には、暗号文字列を表す文字列 S が与えられます。入力は 2 行となり、末尾に改行が 1 つ入ります。
# ・S は暗号化文字された文字列を表す 英字大文字 からなる文字列

# 元に戻された文字列を出力してください。
# 出力最終行の末尾に改行を入れ、余計な文字、空行を含んではいけません。

words = [*'A'..'Z']

num = gets.to_i
str = gets.chomp.chars

result = []

str.each_with_index do |str,index|
  word_num = 0
  if (index + 1) % 2 != 0
    word_num = words.index(str) - num
    if word_num < 0
      word_num = words.index(str) - num + 26
    end
    new_word = words[word_num]
    result << new_word
  else
    word_num = words.index(str) + num
    if word_num > 26
      word_num = words.index(str) + num - 26
    end
    new_word = words[word_num]
    result << new_word
  end
end

puts result.join('')

# 指定された配列の要素番号をずらして取得
# 正確に出すためにはどうしたらよいか？