### git init
gitの初期化

### git add 『ファイル名』
選択したファイルを共有する  
※git add -A . でディレクトリ全てを共有できる

### git commit -m “メッセージ”
コミットコマンド

### git remote add 『リモート名』 『URL』
リモートリポジトリの登録

### git push origin master
プッシュコマンド

### git pull origin master
プルコマンド

###git status
変更したファイルを確認する  
modified　と赤く表示されたファイルがある場合変更したファイルとなる  
※緑で表示されている場合はaddした状態となる

### git diff
変更した箇所を確認できる

### git log
コミット履歴を確認できる  
※git log -p　変更内容を確認できる（終了するにはQを）