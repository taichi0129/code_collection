●作成方法
（composer導入済みの状態）Applocation/MAMP/htdocs直下で

composer create-project laravel/laravel 【アプリ名】 --prefer-dist "6.0.*"
※バージョンを指定する際は最後に入力

●サーバー起動方法
php artisan serve

●初期設定
・タイムゾーン
config/app.php
'timezone' => 'Asia/Tokyo',
→日本時間に変更

・言語設定
config/app.php
'locale' => 'ja',
→日本語に変更

・データベースの文字コード
config/database.php
'charset' => 'utf8mb4',
'collation' => 'utf8mb4_unicode_ci',
→絵文字ありの文字コード

'charset' => 'utf8',
'collation' => 'utf8_unicode_ci',
→絵文字がいらない場合はこちら

・デバッグバーのインストール
composer require barryvdh/laravel-debugbar
※サーバーにデバッグツールが表示される

→表示させたくない時は・・・
.envファイル内
APP_DEBUG=true　を　false　に変更

またデバッグを非表示にしても表示されてしまう場合
php artisan cache:clear　でサーバー上のキャッシュクリア
php artisan config:clear　でコンフィグのクリア
をすることもある