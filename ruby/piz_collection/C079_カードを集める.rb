# 入力は以下のフォーマットで与えられます。

# N M
# c_1
# ...
# c_N
# ・1 行目に買ったカードの枚数 N とカードの種類数を示す整数 M が入力されます。
# ・続く N 行に開けたカードのカード番号 c_i (1 ≦ i ≦ N) が入力されます。
# ・最終行の末尾に改行が 1 つ入ります。

# 何枚開けたときに全種類そろったかを出力してください。
# ただし、全て開けても全種類そろわないときは、"unlucky" と出力してください。

# 期待する出力は 1 行からなります。
# 最後は改行し、余計な文字、空行を含んではいけません。

N,M = gets.split(' ').map(&:to_i)

cards = [*1..M]
count = 1
N.times do
  card = gets.to_i
  if cards.include?(card)
    cards.delete(card)
  end
  if cards.empty?
    puts count
    break
  end
  count += 1
end

puts 'unlucky' unless cards.empty?

# 指定数の配列を作成、指定の値を削除、空がどうかチェック
