array = [1, 2, 3, 4, 5].map do |el| 
  if el.odd?
    el 
  end
end.compact!

# ワンライナーへの書き換え
array = [1, 2, 3, 4, 5].map{ |el| el if el.odd? }.compact!
array = (1..5).to_a.delete_if{ |el| el.even? }
array = (1..5).to_a.delete_if(&:even?)
array = [1, 2, 3, 4, 5].select{ |el| el.odd? }

odd?      # => 自身が奇数であれば真を返す。そうでない場合は偽を返す
even?     # => 自身が偶数であれば真を返す。そうでない場合は偽を返す
delete_if # => 引数に取った内容が真であれば要素を削除する
compact!
end.compact! # => 自身からnilを取り除いた配列を生成して返す。！付きは破滅的に取り除く
