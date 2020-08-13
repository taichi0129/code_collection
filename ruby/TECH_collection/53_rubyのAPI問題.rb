# 任意の文字に対してn番目の文字を消し、
# その消した文字を出力するメソッドを作りましょう。

# ※ヒント：APIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 呼び出し方
# missing_char(string, num)

# 出力例：
# missing_char('kitten', 1) → 'itten'
# missing_char('kitten', 2) → 'ktten'
# missing_char('kitten', 4) → 'kittn'

def missing_char(array, n)
  array.slice!(n)
  puts array
end



# 配列の中に複数の数字を入れて9だけカウントし
# 「配列の中には9が3個です」と
# 出力させるメソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 呼び出し方
# array_count9(nums)

# 出力例
# array_count9([1, 2, 9]) → 1
# array_count9([1, 9, 9]) → 2
# array_count9([1, 9, 9, 3, 9]) → 3

def array_count(nums)
  nine = nums.count(9)
  puts "配列の中には9が#{nine}個です"
end

array_count([1, 9, 9])



# 1,2,3が全て配列内に入っていれば「True」それ以外は「False」と
# 出力されるメソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 呼び出し方
# array123(nums)

# 出力例
# array123([1, 1, 2, 3, 1]) → True
# array123([1, 1, 2, 4, 1]) → False
# array123([1, 1, 2, 1, 2, 3]) → True

def array123(nums)
  if nums.include?(1) && nums.include?(2) && nums.include?(3)
    puts "True"
  else
    puts "False"
  end
end

array123([1,1,2,4,1])





# 任意の文字列の最初の2文字を最後尾に持ってきて
# その文字を出力するメソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# left2('Hello') → 'lloHe'
# left2('java') → 'vaja'
# left2('Hi') → 'Hi'

def left2(str)
  newStr = str.slice!(0,2)
  puts str + newStr
end

left2('Hello')



# 任意の文字列の最後の2文字を3回繰り返し
# 出力するメソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# extra_end('Hello') → 'lololo'
# extra_end('ab') → 'ababab'
# extra_end('Hi') → 'HiHiHi'

# 引数を-2から取る方法
def extra_end(str)
  newStr = str.slice(-2, 2)
  puts newStr * 3
end

extra_end('Hello')

# lengthで長さを取得した後、sliceで取得する方法
def extra_end(str)
  char_num = str.length
  right2 = str.slice!(char_num - 2,2)
  puts right2*3
end




# 任意の文字列の最初の2文字のみ
# 出力するメソッドを作りましょう。
# 文字列が2文字以下だと文字列をそのまま返します。
# 例えば"x"は"x"を、空文字""は""を返します。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# 入力した最初の2文字のみ出す
# first_two('Hello') → 'He'
# first_two('abcdefg') → 'ab'
# first_two('ab') → 'ab'

def first_two(str)
  if str.length <= 2
    puts str
  else
    newStr = str.slice(0,2)
    puts newStr
  end
end

first_two('Hello')



# 任意の文字列にcatとdogの文字が2つで１組ならTrue
# それ以外だとFalseを出力するメソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# cat_dog("catdog") → True
# cat_dog("catcat") → False
# cat_dog("1cat1cadodog") → True

def cat_dog(str)
  if str.include?("cat") && str.include?("dog")
    puts "True"
  else
    puts "False"
  end
end

cat_dog("1cat1cadodog")





# 任意の文字列が "xyz"を含み、
# xyzの前にピリオド（.）が続かない場合はTrueを出力します。
# したがって、 "xxyz"はカウントされますが、 "x.xyz"はカウントされない
# メソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# xyz_there('abcxyz') → True
# xyz_there('abc.xyz') → False
# xyz_there('xyz.abc') → True

def xyz_there(str)
  if str.include?("xyz") && !str.include?(".xyz")
    puts "True"
  else
    puts "False"
  end
end

xyz_there("abc.xyz")




# 任意の2つの文字列があります。
# 大文字と小文字の違いを無視して、
# どちらかの文字がもう一方の文字の最後にある場合はTrueを
# ない場合はFalseを出力するプログラムを作りましょう。
# （つまり、大文字と小文字は区別されません）。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# end_other('Hiabc', 'abc') → True
# end_other('AbC', 'HiaBc') → True
# end_other('abc', 'abXabc') → True

def end_other(str1, str2)
  end_str1 = str1.slice(-1).downcase
  end_str2 = str2.slice(-1).downcase
  if end_str1 == end_str2
    puts "True"
  else
    puts "False"
  end
end

end_other("Hiabc", "abc")




# 任意の3つの数値abcの合計を出力するメソッドを作りましょう。
# ただし、同じ数が含まれている場合
# 合計にはカウントされません。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# lone_sum(1, 2, 3) → 6
# lone_sum(3, 2, 3) → 2
# lone_sum(3, 3, 3) → 0

def lone_sum(ary)
  # 1. 配列から、重複する要素を取り出す
  un_uniqs = []
  ary.each_with_index do |n, i|
    cp_ary = ary.drop(i+1)
    cp_ary.each do |cn|
      un_uniqs << n if n == cn
    end
  end
  # 2. 重複した要素をuniqする
  uniq_un_uniqs = un_uniqs.uniq
  # 3. 重複する数字と元の配列の数字を比較し、もし重複する数字でなければ足し合わせる
  ary.inject(0) {|n, item| uniq_un_uniqs.include?(item) ? n + 0 : n + item }
end

# 冗長
def lone_sum(a,b,c)
  if a == b && a == c
    puts 0
  elsif a == b
    puts c
  elsif a == c
    puts b
  elsif b == c
    puts a
  else
    puts a + b + c
  end
end

lone_sum(3,3,3)





# 任意の文字列で
# "hi"がいくつあるか数えてその数を出力するメソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# count_hi('abc hi ho') → 1
# count_hi('ABChi hi') → 2
# count_hi('hihi') → 2

def count_hi(str)
  puts str.scan(/hi/).length
end

count_hi("abchi hi ho")