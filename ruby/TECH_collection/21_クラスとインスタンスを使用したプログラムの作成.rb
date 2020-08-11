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