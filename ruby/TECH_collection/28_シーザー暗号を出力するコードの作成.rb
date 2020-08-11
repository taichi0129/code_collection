char = "frqjudwxodwlrq"
char_ary = char.split("")
# splitメソッドで文字を一文字ずつ分けて配列に

changed_char_ary = []
# 変換した文字を入れるための空の配列を作成

char_ary.each do |char|
  changed_char_ary << (char.ord - 3).chr
  # ordメソッドで文字のコードポイントに変換し-3でずらす
  # chrメソッドで対象のコードポイントの数値を文字列に変換する
end

puts changed_char_ary.join
# 配列を繋げて出力

