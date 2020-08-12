class Impression < ActiveRecord::Base
  VALID_YOUTUBE_URL_REGEX = ???
  validates :url, presence: true, format: { with: VALID_YOUTUBE_URL_REGEX }
end

# 2行目のvalidationを完成させてください。ただし条件は、「youtube」という文字が投稿された文字列に含まれていることを確かめることとします。
VALID_YOUTUBE_URL_REGEX = /\A.*youtube.*\z/
validates :text, presence: true, format: { with: VALID_YOUTUBE_URL_REGEX }


# 正規表現基礎まとめ
・/    /の中で正規表現を書く
・\A      => 文字列の先頭にマッチ
・\z      => 文字列の末尾にマッチ。文字列の末尾が改行でも常に末尾にマッチする
・*       => 直前の正規表現の０回以上の反復
・[a-z]   => 角括弧で囲まれた文字のいずれかに一個マッチ
・\d      => 数字にマッチ
・{n, m}  => 直前の文字が少なくともｎ回以上、多くてもｍ回出現するものにマッチ
・i       => 大文字、小文字を区別しない検索
