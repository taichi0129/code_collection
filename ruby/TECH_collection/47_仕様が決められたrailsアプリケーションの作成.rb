# 以下の仕様を満たすRailsアプリケーションを作成してください。ただし、scaffoldを使用して構いません。
# ・authorsテーブルがある
# ・booksテーブルがある
# ・authorsとbooksは１対多のアソシエーションが組まれている
# ・authorsテーブルのレコードを削除すると、関連するbooksテーブルのレコードも同時に削除される

（ターミナルで以下を実行）
> rails new sample-app -d mysql
> rails g scaffold author name:string
> rails g scaffold book name:string author:references

# author.rb
class Author < ApplicationRecord
  has_many :books, dependent: :destroy
end