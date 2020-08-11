# キーだけを1つの配列に入れる方法

attr = {name: "田中", age: 27, height: 180, weight: 75}

attr.keys   # キーだけを配列にいれる
attr.values # 値だけを配列に入れる

# valueメソッドを使わずに値を取り出す方法
values = []
attr.each do |key, value|
  values << value
end


# whereメソッドとfind_byメソッドの違い

# whereメソッド
# 条件に合うレコードをすべて取得してくる

# find_byメソッド
# 条件に合うレコードのうち、最初のレコード（idの値が小さいもの）１件だけを取得してくる