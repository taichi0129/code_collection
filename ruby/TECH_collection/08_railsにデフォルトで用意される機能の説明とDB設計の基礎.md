# ORMとは
object-relational-mappingの略
直接SQL文を書く代わりに非常に短いコードで、データベースの読み書きを行える機能。RailsではActiveRecordというモジュールで実装されている。

# database.ymlの役割
・rake db:createのコマンドを実行した時に作成されるデータベースの名称を指定する。

・RailsアプリケーションがSQLサーバーにアクセスするときのソケットファイルの位置を指定する。

