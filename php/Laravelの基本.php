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
php artisan make:controller 【モデル名】Controller —-resource
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
Route::get('contact/index', 'ContactFormController@index');

認証付きのルーティング例）
Route::group(['prefix' => 'contact', 'middleware' => 'auth'], function(){
    Route::get('index', 'ContactFormController@index');
});

※ルートに名前を付ける
引数の後に->name('つけたい名前')
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

●ファットコントローラーの対策
AppフォルダにServicesフォルダを作成、中に必要なファイルを作成
例）
namespace App\Services;

class CheckFormData
{
  public static function checkGender($data) {
    if($data->gender === 0) {
      $gender = '男性';
    }
    if($data->gender === 1) {
      $gender = '女性';
    }
    return $gender;
  }

  public static function checkAge($data) {
    if($data->age === 1) {
      $age = '~19';
    }
    if($data->age === 2) {
      $age = '20~29';
    }
    if($data->age === 3) {
      $age = '30~39';
    }
    return $age;
  }
}
・コントローラーに返してあげる
use App\Services\ファイル名;

$gender = CheckFormData::checkgender($contact);
$age = CheckFormData::checkAge($contact);

●Laravelバリデーション
php artisan make:request ファイル名

public function authorize →　falseをtrueに変える
public function rule に連想配列でバリデーションを書いていく

→コントローラーのstoreアクションの引数を上記作成のファイル名にした後
ビュー側でのエラー表示
@if ($errors->any())
<div class="alert alert-danger">
    <ul>
        @foreach($errors->all() as $error)
            <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif

●ダミーデータ（seedで作成）
php artisan make:seeder UsersTableseeder
public function run() の中に書いていく

・databaseSeederに作成したseedの許可をする
$this->call(UsersTableSeeder::class);

・シーダの実行
composer dump-autoload
php artisan db:seed

・マイグレーションファイルの更新
php artisan migrate:refresh
php artisan migrate:refresh --seed　→更新しつつseedデータも入れてくれる
php artisan migrate:fresh —-seed　も一緒

●ダミーデータ（factory&faker）
php artisan make:factory ContactFormFactory

use App\Model; の記述を使用したいモデルの記述にしていく
$factory->define(Model::class, function (Faker $faker)も一緒
例）
use App\Models\ContactForm;
$factory->define(ContactForm::class, function (Faker $faker)

・フェイカーを日本語に変更
config/app.php
'faker_locale' => 'ja_JP’,に変更

フェイカーを記述後シーダーも作成
use App\Models\ContactForm; 作成するモデルファイルを記述

public function run 内に記述
factory(ContactForm::class, 200)->create(); //200個のダミーデータを生成

databaseSeederに記述
$this->call(ContactFormSeeder::class);

・シーダの実行
composer dump-autoload
php artisan db:seed

●ページネーション
クエリビルダとして
->paginate()をつける

ビューにページを表示させる
{{ $contacts->links() }}

●検索フォーム
検索フォームをつけるアクションの引数に（Request $request）とする
$search = $request->input('search');

$query = DB::table('contact_forms');

//もしキーワードがあったら
if($search !== null){
        //全角スペースを半角に
        $search_split = mb_convert_kana($search, 's');

        //空白で区切る
        $search_split2 = preg_split('/[\s]+/', $search_split, -1,　PREG_SPLIT_NO_EMPTY);

        //単語をループで回す
        foreach($search_split2 as $value){
            $query->where('your_name', 'like', '%'.$value.'%');
        }
};

$query->select('id', 'your_name', 'title', 'created_at');
$query->orderBy('created_at', 'asc');
$contacts = $query->paginate(20);

●リレーション
・１対多
主キーは基本的にbigIntegerになっているため、
紐付けはunsignedBigIntegerとなる

・多対多
中間テーブルを作成
双方のモデルにbelongsToManyを使用
例）
public function routes() {
        return $this->belongsToMany('App\Models\Route');
    }

中間テーブルのマイグレーションファイルに記述
$table->unsignedBigInteger('route_id');
$table->unsignedBigInteger('shop_id');
$table->primary(['route_id', 'shop_id']);　主キーがなくなるため、この記述で主キーを付与

●アソシエーション
・hasMany
public function shops() {
    return $this->hasMany('App\Models\Shop');
}
・belongsTo
public function area() {
    return $this->belongsTo('App\Models\Area');
}

・コントローラーでは主->従で取得する場合
$area_tokyo = Area::find(1)->shops;

従->主で取得する場合
$shop = Shop::find(2)->area->name;

●外部キー制約（FK）※相手先のid内でしか登録できないよう制限をかける
マイグレーションファイルに記述
$table->foreign(対象のカラム)->references(相手先のカラム)->on(相手先のテーブル);
$table->foreign('area_id')->references('id')->on('areas');