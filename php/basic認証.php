<!-- Webサイトに対して必要最低限の認証設定をかけることを指す。 -->
<!-- Webサイトを公開する前に、特定の人にだけアクセスができるようにしたい時などに使用。 -->

<!-- .htaccessファイルを作成 -->
AuthType Basic
AuthName "IDとパスワードを入力してください" <!-- ページを開いた時のアラート文 -->
AuthUserFile /Application/********************** <!-- __FILE__で絶対パスを確認し、最後に.htpasswdを指定 -->
require valid-user

<!-- 最後に改行を忘れずに -->

<!-- .htpasswdファイルを作成 -->
ID:パスワード　の形で記述

<!-- こちらも最後に改行を忘れずに -->

<!-- パスワードはPASSWORD_BCRIPTを使用 -->
<!-- 確認方法 -->
password_hash('パスワード', PASSWORD_BCRYPT);