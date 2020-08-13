# 平日でないまたは休日の場合は「True」と返信し、
# 休日ではない場合は「False」と条件分岐させるメソッドを作りましょう。

# 呼び出し方：
# sleep_in(weekday, vacation)

# 出力例：
# sleep_in(false, false) → False
# sleep_in(true, false) → False
# sleep_in(false, true) → True

def sleep_in(is_weekday, is_vacation)
  if (is_weekday != true) || (is_vacation == true)
    puts "True"
  else
    puts "False"
  end
end

is_weekday = true
is_ vacation = false

sleep_in(is_weekday, is_vacation)




# あなたは警官です。aとｂ二人の容疑者の取り調べをしています。
# どちらも証言がTrue、またはFalseであればその証言はTrueです。
# しかしどちらかがFalseでTrueであればその証言はFalse、と出力するメソッドを作りましょう。

# 呼び出し方：
# police_trouble(a, b)

# 出力例：
# police_trouble(true, false) → False
# police_trouble(false, false) → True
# police_trouble(true, true) → True

def police_trouble(a, b)
  if a && b || !a && !b　# 両者がtrueまたは両者がfalseという条件式になる
    puts "True"
  else
    puts "False"
  end
end

a = true
b = false
police_trouble(a, b)




# 20時から翌朝7時までにオウムに喋られると問題があるのでその場合は「NG」、
# それ以外は「OK」と出力するメソッドを作成します。
# オウムが喋る時をture、喋らない時をfalseと入力することにし、時刻も同時に入力します。

# 呼び出し方：
# parrot_trouble(talking, hour)

# 出力例：
# parrot_trouble(true, 6) → NG
# parrot_trouble(true, 7) → OK
# parrot_trouble(false, 6) → OK
# parrot_trouble(false, 7) → OK

def parrot_trouble(talking, hour)
  if (talking && (hour < 7 || hour > 20))
    puts "NG"
  else
    puts "OK"
  end
end

parrot_trouble(true, 6)




# 正の整数を入力します。その整数が、
# 10の倍数（10,20,30...）からの差が
# 2以内であるときはTrue
# それ以外はFalseと出力するメソッドを作りましょう。

# 出力例：
# near_ten(12)→True
# near_ten(17)→False
# near_ten(19)→True

def near_ten(num)
  if num % 10 <= 2 || num % 10 >= 8
    puts "True"
  else
    puts "False"
  end
end

near_ten(29)




# 数値numが1以上10以下の範囲であればTrueを出力します。
# outside_modeがTrueであった場合は
# 数値が0以下、または11以上であってもTrueを出力します。
# それ以外はFalseを出力するメソッドを作りましょう。

# 出力例：
# in1to10（5、false）→True
# in1to10（11、false）→False
# in1to10（11、true）→True

def in1to10(num,outside_mode)
  if (num >= 1 && num <= 10) || outside_mode
    puts "True"
  else
    puts "False"
  end
end




# 警察がネズミ取りをしています。
# 速度が60以下の場合、出力は0になります。
# 速度が61以上80以下の場合、出力は1になります。
# 速度が81以上の場合、出力は2になります。
# 出力を計算するためのコードを作成し、
# int値としてエンコードします。
# 0=チケットなし、1 =小チケット、2 =大チケット。
# と出力するメソッドを作りましょう。
# アタナの誕生日の日だけ速度制限が5倍大きくなります。
# 速度は小数点以下も有効ですが、判定の際は小数点一桁で四捨五入して整数にしてください。

# 呼び出し方：
# caught_speeding(speed, is_birthday)

# 出力例：
# caught_speeding(60, False) → 0
# caught_speeding(65, False) → 1
# caught_speeding(65, True) → 0

def caught_speeding(speed, is_birthday)
  speed_rounded = speed.round(1)

  if speed_rounded <= 60
    point = 0
  elsif speed_rounded <= 80
    point = 1
  else
    point = 2
  end
  puts is_birthday ? point * 5 : point
end




# 3つの整数a b cが与えられた場合、bまたはcがaとの差が１で
# かつbとｃとの数値の差が2以上の場合はTrue。
# それ以外はFalse
# と出力するメソッドを作りましょう。

# 出力例：
# close_far(1, 2, 10) → True
# close_far(1, 2, 3) → False
# close_far(4, 1, 3) → True

# ヒント
# 返り値を整数に変換する際はabsメソッドを使いましょう。

# abs
# 対象となる数値に対して「abs」メソッドを実行すると絶対値を取得することができます。すなわち正の数の場合はそのままですが負の数の場合は符号を取って正の数にした数値が取得できます。

# num = (-5).abs

def close_far(a,b,c)
  x = (a-b).abs
  y = (a-c).abs
  z = (b-c).abs

  if (x == 1 && z >= 2)
    puts "True"
  elsif ( y == 1 && z >= 2)
    puts "True"
  else
    puts "False"
  end
end





# 配列要素にある数値から偶数を数えて出力するメソッドを作りましょう。

# 出力例：
# count_evens([2, 1, 2, 3, 4]) → 3
# count_evens([2, 2, 0]) → 3
# count_evens([1, 3, 5]) → 0

def count_evens(ary)
  count = 0
  ary.each do |ary|
    count += 1 if ary.even?
  end
  puts count
end

count_evens([1,3,5])
