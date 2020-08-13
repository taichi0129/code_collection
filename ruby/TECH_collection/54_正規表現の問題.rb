# 任意の文字列に"code"が、どこかに現れるかを回数を返して数えて
# その数を出力するメソッドを作りましょう。
# ただし、'd'には任意の文字が使用可能です、
# 例えば"cope"と "cooe"はカウントされます。

# ヒント:正規表現を使用してみましょう。

# 出力例：
# count_coxe('aaacodebbb') → 1
# count_coxe('codexxcode') → 2
# count_coxe('cozexxcope') → 2

def count_code(str)
  puts str.scan(/co.e/).length
end