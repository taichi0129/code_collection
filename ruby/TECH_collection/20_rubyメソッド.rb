# while文の無限ループを抜けるようプログラムをせよ
# a = 0

# while true do
#  puts a
#  a += 1
# end

# （例１）
a = 0

while true do
  puts a
  a += 1
  break if a >= 100
end

# （例２）
a = 0

while a < 100 do 
  puts a
  a += 1
end


# 文字列を数字に変換するメソッドを答えよ。
str = "1"
str.to_i


# 最後の値"something"を配列から削除せよ。
array = ["dog", "cat", "something"]
array.pop