# 入力は以下のフォーマットで与えられます。

# N
# s_1
# s_2
# ...
# s_N
# ・1 行目に、ポーカーの手札の個数を表す整数 N が与えられます。
# ・続く N 行のうちの i 行目 (1 ≦ i ≦ N) には、i 番目の手札の情報を表す 4 個の数字からなる文字列が与えられます。i 行目の文字列 s_i の j 番目 (1 ≦ j ≦ 4) の文字 s_{i, j} は、i 番目の手札の j 番目のカードに書かれた数字が s_{i, j} であるということを表します。
# ・入力は合計で N + 1 行となり、入力値最終行の末尾に改行が 1 つ入ります。

# ・それぞれの手札の役を以下の形式で出力してください。
# N
# s_1
# s_2
# ...
# s_N
# ・期待する出力は N 行からなります。
# ・i 行目 (1 ≦ i ≦ N) にはそれぞれ i 番目の手札の役を表す文字列として
# 　・「Four Card」
# 　・「Three Card」
# 　・「Two Pair」
# 　・「One Pair」
# 　・「No Pair」
# のいずれかを出力してください。

N = gets.to_i
a = 1

while a <= N do
    card = gets.split("").map(&:to_i)
    i = 1
    pair = 0
    result = ""
    while i <= 9
        count = card.count(i)
        if count == 4
            result = "Four Card"
        elsif count == 3
            result = "Three Card"
        elsif count == 2
            pair += 1
            if pair == 2
                result = "Two Pair"
            elsif pair == 1
                result = "One Pair"
            end
        end
        i += 1
    end
    if result == ""
        puts "No Pair"
    else
        puts result
    end
    a += 1
end

# 複数の条件分岐