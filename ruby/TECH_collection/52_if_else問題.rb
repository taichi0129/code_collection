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
