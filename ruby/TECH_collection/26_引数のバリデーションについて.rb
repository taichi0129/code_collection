# デフォルト値
# 引数の変数に最初から値を入れておくことができる
# 引数が渡ってきたら更新される
def method1(num = 3)
  puts num
end

method1
method1(10)


# 可変長引数
# 引数の要素数をいくつでも設定することができる
def method2(*num)
  puts num
end

method2(10, 20)
method2(1000, "aaa", 50)


# キーワード引数
# 仮引数、実引数の間違いを防ぐため、わかりやすく引数を取るときに使用
def method3(name:)
  puts name
end

method3(name: "yamada")