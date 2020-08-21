# 入力は以下のフォーマットで与えられます。

# N c_1 c_2
# p_1
# p_2
# ...
# p_N
# ・1 行目には、株を売買する日数を表す整数 N、株の売買条件を表す整数 c_1, c_2 がこの順で半角スペース区切りで与えられます。
# ・続く N 行のうちの i 行目 (1 ≦ i ≦ N) には、i 日目の株価を表す整数 p_i が与えられます。
# ・入力は合計で N + 1 行となり、入力値最終行の末尾に改行が 1 つ入ります。

# N 日目に持ち株をすべて売ったあとの損益を出力してください。

# 末尾に改行を入れ、余計な文字、空行を含んではいけません。

N,c_1,c_2 = gets.split(' ').map(&:to_i)
price = 0
total_price = 0
stock = 0
count = 1

while count <= N
    stock_price = gets.to_i
    if stock_price <= c_1 && count != N
        price += stock_price
        total_price -= stock_price
        stock += 1
    elsif stock_price >= c_2 && stock != 0 && count != N
        total_price += stock_price * stock
        price = 0
        stock = 0
    else
        price = price
    end
    total_price += stock_price * stock if count == N && stock != 0
    count += 1
end
puts total_price

# 条件分岐と計算問題