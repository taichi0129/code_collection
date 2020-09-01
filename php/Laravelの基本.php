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

●データベース接続方法
MAMPホームページ「PHPMYADMIN」にてデータベース、データベースユーザーを作成
.envファイルにて
DB_DATABASE=
DB_USERNAME=
DB_PASSWORD=
を記述していく

●データベースの作成
php artisan migrate 
→初回に入力するとlaravel初期のテーブルが作成可能

※出来ない場合・・・
データベースのHOSTNAMEをlocalhostで作成
.envのDB_HOSTもlocalhostに設定
config/database.php内を変更
'unix_socket' => '/Applications/MAMP/tmp/mysql/mysql.sock',

●laravelで出来るコマンドリスト
php artisan list

●コンソール
php artisan tinker

●モデルの作成
php artisan make:model 【モデル名】→　app直下にモデルファイルを作成
php artisan make:model Models/【モデル名】→　Modelsフォルダにモデルファイルを作成
php artisan make:model Models/【モデル名】 -mc
→マイグレーションファイルとコントローラーを同時に作成

●マイグレーションファイルの作成
php artisan make:migration create_【モデル名（複数）】_table
作成内容を記述した後
php artisan migrate　でテーブルが作成できる

●コントローラーの作成
php artisan make:controller 【モデル名】Controller
app/http/controllers直下に作成

※Restfulなコントローラーの作成
php artisan make:controller 【モデル名】Controller —resource
アクション全てが記述されたコントローラーが作成される

●MVCの書き方（簡易）
・routes/web.php
Route::get('飛ばしたいURL(tests/test)', '飛ばしたいコントローラー(TestController@index)');

・app/http/controllers/・・・
飛ばしたいコントローラーの中に記載
public function index()
{
	return view('tests/test');
}

・resources/views/・・・にフォルダ・ファイルを作成
※ビューファイルには必ず.blade.phpと命名

・DB情報をビューに受け渡す
コントローラーにモデルファイルを使えるようする
use App/Models/モデル名;

コントローラー（index）に記載
$values = Test::all();
return view('tests/test', compact('values'));
※compact関数・・・


ビューにforeach構文を使って表示
@foreach($values as $value);
{{$value->id}}<br>
{{$value->text}}<br>
@endforeach

●ddコマンド（die + var_dumpの略）
dd(変数名)　→変数の中身を表示することが出来る

●ヘルパ関数
Laravelが持っている便利な関数(ddもviewもヘルパ関数)

●コレクション型
データベースからの値の取得時はコレクション型になっている
コレクション型専用の関数を使え、メソッドチェーンで記述可能

●クエリビルダ
クエリをPHPで書くことが出来る構文
使うにはコントローラーに下記内容を記載
use Illuminate\Support\Facades\DB;

●ファサード
クラスをインスタンス化しなくてもstaticメソッドメソッドのようにメソッドを実行できるようにしてくれる機能

設定されている場所は
config/app.php
※Illuminate\Support\Facadesはどこ？
composerでインストールしているのでvenderフォルダに格納
vender\laravel\framework\Illuminate\Support\Facades内にある

●ブレード
ブレード構文は頭に@を付ける
{{  }}　→XSS攻撃を防ぐため、自動的にhttpspecialcharsが付与される
@csrf　を書くだけでcsrf対策が出来てしまう
Layout機能も付与することが出来る

●Laravel-ui
Laravelのスカフォールド。便利機能を一気にダウンロードできる。
composer require laravel/ui:^1.0 --dev
※詳細はlaravelマニュアルのスカフォールドを参照

・基本的なスカフォールドを生成
php artisan ui bootstrap
php artisan ui vue
php artisan ui react

・ログイン／ユーザー登録スカフォールドを生成
php artisan ui bootstrap --auth
php artisan ui vue --auth
php artisan ui react --auth
※ログイン機能も追加することができる。

パッケージダウンロード
npm install
(node -vとnpm -vコマンドでバージョンが出てくるか事前に確認)
package.json内のdevDependencesの中身がインストールされる

●npm run dev
スカフォールドを導入した場合、cssやjs記述は全て
public/直下のファイルにまとめられる。
更新する場合はnpm run devコマンドを打つと更新できる

●npm run watch
npm run devを自動的に更新してくれる。
※ターミナルウインドウを複数置いておくことが多い

●エラーメッセージの日本語化
laravelは初期からエラーメッセージが用意されている(resources/lang/en)※英語
日本語化(githubにファイルあり)ファイル（ja）をlangにコピー
https://github.com/minoryorg/laravel-resources-lang-ja
config/app.phpのlocaleをjaに変更

※必要箇所を自分で日本語にしたい場合
validation.php の最下部にattributesという連想配列があるため、
その中に記述
例）
'password' => 'パスワード'

●バリデーション属性
nullable($value = true) →　railsの null: falseと一緒
unsigned() →　数値に使用　マイナスはない、プラスのときだけに使用

●マイグレーションファイルの追加、ロールバック
追加）
php artisan make:migration add_カラム名_to_テーブル名_table —table=テーブル名

→after('カラム名')　引数のカラム名の後にカラムを追加することができる
→dropColumn('カラム名')　引数のカラムを消去できる

ロールバック）
php artisan migrate:rollback マイグレーションファイルを一つ戻す
php artisan migrate:rollback —step=○　○個分マイグレーションファイル戻す

php artisan migrate:status マイグレーションファイルの状況を確認

●Restfulなコントローラー作成
７つのアクション全てが事前に記述されたコントローラーが作成できる
php artisan make:controller モデル名Controller --resource

●ルーティングの記述
基本例）
Route::get(‘contact/index’, ‘’ContactFormController@index);

認証付きのルーティング例）
Route::group(['prefix' => 'contact', 'middleware' => 'auth'], function(){
    Route::get('index', 'ContactFormController@index');
});

※ルートに名前を付ける
引数の後に->name(‘つけたい名前’)
ビューから呼び出しをする際に名前をつけておくと便利

※ルートの見方
php artisan route:list　ターミナル上でルートが確認できる
php artisan route:list > ファイル名.txt　ルート一覧のファイルが作成される

●認証ディレクティブ
@guest
~ゲストならこれを表示~
@else
~ゲストではなければこちらを表示~
@endguest

●Requestクラス
PHPはスーパーグローバル変数、LaravelはRequestでデータを取得する
例）
public function store(Request $request)
    {
        $your_name = $request->input('your_name');
    }

●データベースの保存方法
モデルを使えるようにインスタンス化
例）
use App\Models\ContactForm; 登録したいモデルを使えるようにする

~store内~
$contact = new ContactForm;  //モデルをインスタンス化する

$contact->your_name = $request->input('your_name'); //カラム名に対応するインプットデータを$contactに格納

$contact->save(); //データを保存
return redirect('contact/index'); //保存後リダイレクトするなら記述

●データの表示方法(index)
・エロクワント、ORマッパー
$contacts = ContactForm::all();

・クエリビルダ
use Illuminate\Support\Facades\DB;　を記述

$contacts = DB::table('contact_forms')
->select('id', 'your_name')
->get();

return view('contact.index', compact('contacts')); //compact関数（引数は＄なしの変数）

●表示順
orderByメソッド
クエリビルダでメソッドチェーンとして
->orderBy('カラム名', 'desc' or 'asc')　で順番をソートできる

●詳細表示(show)
$contact = ContactForm::find($id);

return view('contact.show', compact('contact'));

・詳細ページへのリンク
{{ route('contact.show', ['id' => $contact->id])}}　//連想配列でidをわたしてあげる

