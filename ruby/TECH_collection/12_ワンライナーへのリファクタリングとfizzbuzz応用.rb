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

# メソッドとして定義する場合
# while文
def fizzbuzz(num)
  count = 1
  while count <= num
    if count % 3 == 0 && count % 5 == 0
      puts "FizzBuzz"
    elsif count % 3 == 0
      puts "Fizz"
    elsif count % 5 == 0
      puts "Buzz"
    else
      puts count
    end
    count += 1
  end
end

input = gets.to_i
fizzbuzz(input)

# each文
def fizzbuzz(max_num)

  (1..max_num).each do |num|
    if num % 15 == 0
      puts "FizzBuzz"
    elsif num % 5 == 0
      puts "Buzz"
    elsif num % 3 == 0
      puts "Fizz"
    else
      puts num
    end
  end
end

puts 'いくつまで数えますか？'
num = gets.to_i
fizzbuzz(num)