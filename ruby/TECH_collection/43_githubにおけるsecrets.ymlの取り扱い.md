#### Railsではsecrets.ymlにアクセスキーなどの重要情報を記載することがあります。以下の手順でGitHubへのpushを行なった場合、問題が発生する恐れがあります。  
#### その理由と対処法を説明してください。  

#### ①rails new を行い新規にアプリケーションの作成を行なった。  
#### ②開発を少し進めた段階で、一度全てのファイルをGitHubにpushした。  
#### ③config/secrets.ymlにAWS S3のアクセスキーを記述した。  
#### ④gitでpushされるのを防ごうと考え、.gitignoreの中に、secrets.ymlを追加した。  
#### ⑤変更があった全てのファイルをpushした。  

＜理由＞  
一度コミットしたファイルについては、その後.gitignoreに追加したとしてもGitの管理下から外されず、pushされてしまう。  

＜対処方法＞  
（例）  
・ターミナルで  
　> git rm --cached secrets.yml  
　を実行しGitで管理されないようにする。  

・secrets.ymlには直接キーを記述せず、環境変数を参照するようにする。  

（補足）  
環境変数とは、その端末のみからアクセスできる変数です。パスの指定や、今回のようにキーを保存するのに使われます。  

Linuxでは.bash_profileに記述をすることで、毎回環境変数を設定しなくても起動時にセットすることができます。  

よく使う機能のため、ネット記事等を参考に整理しておくことをお勧めします。  
