# 入力は以下のフォーマットで与えられます。

# N #入力される単語の数
# a_1 #1個目の単語
# a_2 #2個目の単語
# ...
# a_N #N個目の単語

# 必ずしも実在の英単語が入力されるわけではありません。
# 入力値最終行の末尾に改行が１つ入ります。

# 英単語 a_i を複数形に変換した答えを i 行目に出力してください。

# 最後は改行し、余計な文字、空行を含んではいけません。

N = gets.to_i

words = []
N.times do
  re_word = ''
  word = gets.chomp
  if word.end_with?('s', 'sh', 'ch', 'o', 'x')
    re_word = word.concat 'es'
  elsif word.end_with?('f', 'fe')
    if word.end_with?('f')
      re_word = word.chop!.concat('ves')
    else
      re_word = word.chop!.chop!.concat('ves')
    end
  elsif word.end_with?('y')
    unless word.end_with?('ay', 'iy', 'uy', 'ey', 'oy')
      re_word = word.chop!.concat('ies')
    else
      re_word = word.concat('s')
    end
  else
    re_word = word.concat('s')
  end
  words << re_word
end

puts words

# 文字列文末の真偽と文字列文末の削除＆追加