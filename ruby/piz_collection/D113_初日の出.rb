# 入力は以下のフォーマットで与えられます。

# h:m

# ・初日の出に出発する時間が h 時、 m 分とし「:」区切りで 1 行で与えられます。 h と m はゼロ埋めではない点に注意してください。
# ・末尾に改行が 1 つ入ります。

# 初日の出を見るために出発する時間が与えられるので 8 時間睡眠をするために寝始める時間を出力して下さい。

# 出力は以下のフォーマットで出力して下さい。 h と m はゼロ埋めではない点に注意してください。

# h:m

# 末尾に改行を入れ、余計な文字、空行を含んではいけません。

time = gets.chomp.chars

if time[1] == ":" 
  if time[0] == "8" || time[0] == "9"
    sleep = time.slice!(0).to_i - 8
  else
    sleep = time.slice!(0).to_i + (24 - 8)
  end
  puts sleep.to_s + time.join('')
elsif time[2] == ":"
  sleep = time[0..1].join('').to_i - 8
  time.slice!(0..1)
  puts sleep.to_s + time.join('')
end

# 時間の逆算、8時間前に起床するためには