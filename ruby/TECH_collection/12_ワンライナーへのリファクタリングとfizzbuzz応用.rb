# ワンライナーへの変換
str = "is this a pen?"
if str.include?("?")
  puts "yes, it is."
end

# ↓
str = "is this a pen?"
puts "yes, it is." if str.include?("?")


# fizzbuzz問題
num = 1
while num <= 100
  if num % 3 == 0 && num % 5 == 0
    puts "fizzbuzz"
  elsif num % 3 == 0
    puts "fizz"
  elsif num % 5 == 0
    puts "buzz"
  else
    puts num
  end
  num += 1
end

# elsifを使わない場合
num = 1
while num < 101
  str = ""
  if num % 3 == 0
    str = str + "fizz"
  end

  if num % 5 == 0
    str = str + "buzz"
  end
  if str == ""
    str = str + num.to_s
  end
  puts str
  num += 1
end