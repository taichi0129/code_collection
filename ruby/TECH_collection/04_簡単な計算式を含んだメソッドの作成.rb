# 「square」メソッドを定義し、引数で渡された整数を２乗した結果を返すコードを実装してください
def square(length)
  length ** 2
end

# 上記のメソッドの「外側」にコードを追加し、実行した時に下記の文字列が表示されるようにしてください。
# <変数side_length に5を代入した場合>「１辺が5センチの正方形の面積は25c㎡です」
def square(length)
  length ** 2
end

side_length = 5
puts "１辺が#{side_length}センチの正方形の面積は#{square(side_length)}c㎡です"