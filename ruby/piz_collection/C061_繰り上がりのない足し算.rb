# 入力は以下のフォーマットで与えられます。

# A B
# ・足し算に用いる整数 A, B がこの順に半角スペース区切りで与えられます。
# 入力は 1 行となり、末尾に改行が 1 つ入ります。

# 繰り上がりを無視して A と B を足した結果を出力してください。
# 出力は A と B の大きい方の桁数に合わせてください。

# 末尾に改行を入れ、余計な文字、空行を含んではいけません。

input1,input2 = gets.split(' ').map(&:to_i)
hun = ((input1/100) % 10) + ((input2/100) % 10)
ten = ((input1/10) % 10) + ((input2/10) % 10)
one = ((input1/1) % 10) + ((input2/1) % 10)


hun = (hun/1) % 10 if (hun/10) % 10 == 1
ten = (ten/1) % 10 if (ten/10) % 10 == 1
one = (one/1) % 10 if (one/10) % 10 == 1
result = "#{hun}"+"#{ten}"+"#{one}"
puts result.to_i

# 数値の位の出し方、条件分岐、結合
# もっとスマートなやり方があるはず！
