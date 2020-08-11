# 以下の条件を満たすコードを記述してください。

# ・Bookクラスを作成する
# ・Bookクラスは@titleと@priceをプロパティとして持っている
# ・attr_readerを使用する
# ・Bookクラスのインスタンスを作成する（タイトル、価格は任意）
# ・作成したインスタンスから、タイトルを取得し画面に表示させる。

class Book
  attr_reader :title, :price
  # attr_readerはインスタンス変数の読み出し専用アクセサを定義できる。

  def initialize(title, price)
    @title = title
    @price = price
  end

end

book = Book.new("ドラえもん", 5000)
puts book.title
puts book.price


# attr_accessorでも可
class Book
  attr_accessor :title, :price
  # attr_accessorは読み書きどちらもできる

  def initialize(title, price)
    @title = title
    @price = price
  end
end

book = Book.new("ドラえもん", 5000)
puts book.title
puts book.price


# attrメソッドを使用しない場合
class Book

  def initialize(title, price)
    @title = title
    @price = price
  end
  def title
    @title
  end
  def price
    @price
  end
end

book = Book.new("ドラえもん", 5000)
puts book.title
puts book.price



# ユーザーに数字を入力してもらい、その数の回数だけHello!と表示させるコードを記述せよ。
# 関数を定義
def output(num)
  num.times{ puts "Hello!" }
end

puts "何回表示させますか？"
num = gets.to_i
output(num)

# 関数定義しない
input = gets.to_i

num = 1
while num <= input
  puts "Hello!"
  num += 1
end


# 以下の仕様にしたがってコードを記述してください。

# ・Personクラスはプロパティ name, ageを持っている。
# ・StudentクラスはPersonクラスを継承している。
# ・Studentクラスにはintroduceメソッドが定義されている。実行すると
# 　「私の名前は◯◯です。◯歳です」と表示がされる。
# ・Studentクラスのインスタンスを作成し、introduceメソッドを実行する。

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Student < Person
  def introduce
    puts "私の名前は#{@name}です。#{@age}歳です"
  end
end

yamada = Student.new("山田", 20)
yamada.introduce