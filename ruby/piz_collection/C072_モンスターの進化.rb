# 入力は以下のフォーマットで与えられます。

# ATK DEF AGI
# N
# s_1 MINATK_1 MAXATK_1 MINDEF_1 MAXDEF_1 MINAGI_1 MAXAGI_1
# s_2 MINATK_2 MAXATK_2 MINDEF_2 MAXDEF_2 MINAGI_2 MAXAGI_2
# ...
# s_N MINATK_N MAXATK_N MINDEF_N MAXDEF_N MINAGI_N MAXAGI_N
# ・1 行目にはそれぞれ、モンスターの現在の攻撃力、防御力、素早さを表す 3 つの整数 ATK, DEF, AGI がこの順で半角スペース区切りで与えられます。
# ・2 行目には進化先のモンスター数を表す整数 N が与えられます。
# ・続く N 行のうち、i 行目 (1 ≦ i ≦ N) には、i 番目の進化先のモンスターの名前を表す文字列 s_i と進化条件を表す 6 つの整数 MINATK_i, MAXATK_i, MINDEF_i, MAXDEF_i, MINAGI_i, MAXAGI_i がこの順で半角スペース区切りで与えられます。
# 　・s_i はモンスターの名前を表す、小文字の英字からなる文字列です。
# 　・MINATK_i, MAXATK_i は攻撃力の条件を表し、このモンスターに進化するには攻撃力が MINATK_i 以上 MAXATK_i 以下である必要があります。
# 　・MINDEF_i, MAXDEF_i は防御力の条件を表し、このモンスターに進化するには防御力が MINDEF_i 以上 MAXDEF_i 以下である必要があります。
# 　・MINAGI_i, MAXAGI_i は素早さの条件を表し、このモンスターに進化するには素早さが MINAGI_i 以上 MAXAGI_i 以下である必要があります。
# ・入力は合計で N + 2 行からなり、末尾には改行が 1 つ入ります。

# 進化する条件を満たす進化先のモンスター名を出力してください。条件をみたすモンスターが複数ある場合、入力された順番に改行区切りで出力してください。
# また、進化条件をみたすモンスターがいない場合は "no evolution" と出力してください。
# 末尾に改行を 1 つ入れ、余計な文字、空行を含んではいけません。

ATK,DEF,AGI = gets.split(' ').map(&:to_i)
N = gets.to_i

evos = []
N.times do
  evo = [gets.split].map{|a,b,c,d,e,f,g| [a,b.to_i,c.to_i,d.to_i,e.to_i,f.to_i,g.to_i]}.flatten
  evos << evo
end

evolution = []
evos.each do |evo|
  if ATK >= evo[1] && ATK <= evo[2]
    if DEF >= evo[3] && DEF <= evo[4]
      if AGI >= evo[5] && AGI <= evo[6]
        evolution << evo[0]
      end
    end
  end
end

puts "no evolution" if evolution.length == 0
puts evolution

# 文字列と数値の取得、多次元配列