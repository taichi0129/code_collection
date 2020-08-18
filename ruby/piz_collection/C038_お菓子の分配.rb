# 入力は以下のフォーマットで与えられます。
# M N
# m_1
# m_2
# ...
# m_M
# ・1 行目には、機械の数を表す整数 M と、詰め込むお菓子の数を表す整数 N が、空白区切りで与えられます。
# ・続く M 行のうち i (1 ≦ i ≦ M) 行目には、 i 番目の機械によって、お菓子が分配される容器の数を表す整数 m_i が与えられます。
# ・入力は合計で N + 1 行となり、入力値最終行の末尾に改行が１つ入ります。

# 排出される余りが最も少ない機械の番号を 1 行に出力してください。ただしそのような機械が複数ある場合は、その中で分配される容器の総数が多い機械の番号を出力してください。

def surpluses_calc(surpluses)
  index = 0
  best_machine = surpluses[0]
  surpluses.each_with_index do |i, surplus|
    if best_machine > surplus
      best_machine = surplus
      index = i
    end
  end
  puts index + 1
end

M,N = gets.split(' ').map(&:to_i)

surpluses = []
M.times do
  machine = gets.to_i
  surplus = N % machine
  surpluses << surplus
end

surpluses_calc(surpluses)

# 余剰の計算方法、配列の最小数値のインデックスの出力
# エラーになる理由が不明
