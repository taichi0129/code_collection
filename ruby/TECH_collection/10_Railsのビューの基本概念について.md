# application.html.erb
デフォルトでは、全てのビューが読み込まれるときapplication.html.erbが読み込まれる。  
そのため、ヘッダーやフッターなど共通で表示させたい内容をここに記述する。

# form_withヘルパーメソッドの特徴
- form_withで自動でパスを選択してくれて、HTTPメソッドを指定する必要が無い
- コントローラから渡された、ActiveRecordを継承するモデルのインスタンスが利用できる
- form_withではinputタグは用いない

# assetフォルダを読み込んでくれる理由
application.html.erbにstylesheet_link_tag 'application'という記述があるため、  
app/assets/stylesheets/application.cssが読み込まれる。  
application.cssにあるrequire tree .　という記述により、  
同じフォルダにあるcssファイル全てが読み込まれる。