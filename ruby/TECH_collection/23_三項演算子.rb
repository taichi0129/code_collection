# 三項演算子とは
# 条件分岐を行うための演算子

# 条件式 ? 真の時の値 : 偽の時の値

# 条件式を判定し、trueだった時は「真の時の値」を、falseだった時は「偽の時の値」を返す。条件や返り値がシンプルな場合、if分よりも簡潔に記述できる。


# 三項演算子を用いて書き換える
var = "文字列"

if var.class == String
  "varはStringです"
else
  "varはStringではありません"
end


var = "文字列"

var.class == String ? "varはStringです" : "varはStringではありません"