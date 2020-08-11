# ①
class user

end


# ②
Tweet = Class.new do
  # ブロックの内部で各種メソッドを定義
end

# メリット・・・ブロックの外の変数が呼び出せる
# （例）
var = 'hogehoge'

class Tweet
  # classブロックの内部からは、ブロックの外で定義されたvarは呼び出せない
  puts var
end

Tweet = Class.new do
  # Class.newブロックの内部からは、varを呼び出すことができる
  puts var
end


# ③
self.class.const_set :'Tweet', Class.new do
  # ブロックの内部で各種メソッドを定義
end

# メリット・・・クラスを動的に定義できる
# （例）
class Product
  def self.create_new_class(class_name)
    # 引数の値に応じて、クラスを作成する
    self.class.const_set :"#{class_name}", Class.new
  end
end