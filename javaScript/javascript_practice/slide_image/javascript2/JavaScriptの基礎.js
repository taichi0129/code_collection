// 出力
console.log('hello, world'); //=>hello, world　とコンソールに表示
window.alert('hello, world'); //=>hello, world　とアラートで表示

// 変数の定義
var name = '鈴木一郎';
console.log(name); //=> 鈴木一郎

name = '山田太郎';
console.log(name); //=> 山田太郎

// 文字列の連結
var name = '鈴木' + '一郎';
console.log(name); //=> 鈴木一郎

var firstName = '鈴木';
var lastName = '一郎';
var fullName = firstName + lastName;
console.log(fullName); //=> 鈴木一郎

var name = '鈴木';
name = name + '一郎';
console.log(name); //=> 鈴木一郎

// 数値
console.log(10); //=> 10

var x = 10;
console.log(x); //=> 10

// 四則演算
var x = 10;
var y = 4;
var result;
// 足し算
result = x + y;
console.log(result); //=> 14
// 引き算
result = x - y;
console.log(result); //=> 6
// 掛け算
result = x * y;
console.log(result); //=> 40
// 割り算（商）
result = x / y;
console.log(result); //=> 2.5
// 割り算（あまり）
result = x % y;
console.log(result); //=> 2

// インクリメント
var x = 1;
x++;
console.log(x); //=> 11 (自分自身に１増やす)

// デクリメント
var x = 10;
x--;
console.log(x); //=> 9 (自分自身を１減らす)

// 文字列の場合
var x = '10';
var y = '20';
var result = x = y;
console.log(result); //=> 1020 (文字列なので、連結される)

// 配列の定義
var list = ['val1', 'val2', 'val3'];

// 配列の操作
var fruits = ['みかん', 'りんご', 'れもん'];
var orange = fruits[0];
var apple  = fruits[1];
var lemon  = fruits[2];
console.log(orange); //=> みかん
console.log(apple);  //=> りんご
console.log(lemon);  //=> れもん

// 配列の更新
var fruits = ['みかん', 'りんご', 'れもん'];
fruits[1] = 'いちご';
console.log('fruits'); //=> ['みかん', 'いちご', 'れもん']

// 配列の要素数
var fruits = ['みかん', 'りんご', 'れもん'];
console.log(fruits.length); //=> 3

// オブジェクトの定義
var obj = {
  key1: 'val1',
  key2: 'val2',
  key3: 'val3'
};

// オブジェクトの取得
var person = {
  name:    '鈴木一郎',
  age:     '20',
  gender:  'male',
  address: {
    postcode: '100-0001',
    pref:     '東京都',
    city:     '千代田区'
  }
};
var name = person.name
console.log(name); //=> 鈴木一郎
var postcode = person.address.postcode
console.log(postcode); //=> 100-0001
// 値の更新
person.age = 21;
console.log(person.age); //=> 21
// プロパティーの追加
person.kana = 'すずきいちろう';
console.log(person.kana); //=> すずきいちろう

/*================
    比較演算子
==    => 左右の値が同じならtrue
!=    => 左右の値が異なるならfalse
===   => 左右の値が同じならtrue(厳密)
!==   => 左右の値が異なるならtrue(厳密)
>     => 左のほうが大きいならtrue
>=    => 左のほうが大きいか同じならtrue
<     => 右のほうが大きいならtrue
<=    => 右のほうが大きいか同じならtrue
=================*/

// if文
var name = '鈴木一郎';
if(name) {
  console.log('名前が設定されています'); //=> nameに何かしら入っているため出力される
}

/*===============
    論理演算子
!     => trueとfalseを反転させる
||    => どちらかがtrueならtrue
&&    => 両方trueならtrue
================*/

// 条件分岐
var x = 100
if(x > 100) {
  console.log('xが100より大きい値です');
} else if(x > 50) {
  console.log('xが100以下かつ50より大きい値です');
} else {
  console.log('xが50以下の値です');
}

// while文（繰り返し文）
var i = 0;
while(i < 10) {
  console.log(i); //=> 0から9まで出力される
  i++; // インクリメントによりiが１ずつ増えるため無限ループにはならない
}

// for文（繰り返し文）
for(var i = 0; i < 10; i++) {
  console.log(i); //=> 0から9まで出力される
}

// 配列の繰り返し
var fruits = ['みかん', 'りんご', 'ぶどう'];
var value;
for(var i = 0; i < 3 ; i++) {
  value = fruits[i];
  console.log(value); //=> みかん、りんご、ぶどうの順で出力される
}

// 関数の定義
function add() {
  var a = 10;
  var b = 20;
  var result = a + b;
  console.log(result);
}
add(); //=> 30

var add = function() {
  var a = 10;
  var b = 20;
  var result = a + b;
  console.log(result);
}
add(); //=> 30

// 引数
function add(a, b) {
  var result = a + b;
  console.log(result);
}
add(1, 2);   //=> 3
add(10, 20); //=> 30 

// 戻り値
function add(a, b) {
  var result = a + b;
  return result;
}
var result1 = add(1, 2);
console.log(result1); //=> 3
var result2 = add(10, 20);
console.log(result2); //=> 30
var result3 = add(result1, result2);
console.log(result3); //=> 33

/*==================
        DOM
Document Object Modelの略
JavaScriptからHTMLやCSSのデータを取得、操作するための仕組み
===================*/

// 要素の取得
document.getElementById('id名')　//=> 指定したid名の要素を取得する
document.getElementsByTagName(要素名)　//=> 指定した要素名の要素をすべて取得する
document.getElementsByClassName('class名') //=> 指定したclass名の要素を取得する
// CSSのセレクタを使って要素を取得する
document.querySelector('セレクタ名') //=> マッチした要素一つだけ取得する
document.querySelectorAll('セレクタ名') //=> マッチした要素全てを取得する

//属性値の取得、変更、追加
// HTML
// <img id="image" src="sample.jpg" alt="サンプル画像">

// JavaScript
window.onload = function() {
  var image = document.getElementById('image');
  var src = image.src;
  console.log(src); //=> sample.jpgを取得

  image.src = 'sample2.jpg'; //=> sample2.jpgに変更

  image.width = 300; //=> width属性を追加
  image.height = 100; //=> height属性を追加
};

// 要素の内容を取得、変更、追加
// HTML
// <div id="box">This is <b>box</b></div>

// JavaScript
window.onload = function() {
  var box = document.getElementById('box');
  var html = box.innerHTML; //=> 取得した要素の内容を取得
  console.log(html); //=> This is <b>box</b>

  box.innerHTML = '<em>new</em> HTML!'; //=> 取得した要素の内容を変更
  console.log(box.innerHTML); //=> <em>new</em> HTML!

  box.innerHTML = box.innerHTML + ' added!'; //=> 取得した要素の内容に追加
  console.log(box.innerHTML); //=> This is <b>box</b> added!
};

// 新規要素の作成と追加
// HTML
// <div id="box"></div>

// JavaScript
window.onload = function() {
  var box = document.getElementById('box');
  var newdiv = document.createElement('div'); //=> div要素を新規作成
  newdiv.id = 'new'; //=> 新規作成したdiv要素のid属性をnewに設定
  newdiv.innerHTML = 'new div'; //=> 新規作成したdiv要素の中にnew divというテキストを設定
  box.appendChild(newdiv); //=> box要素の中に新規作成したdiv要素を追加
};
// 追加後のHTML
// <div id="box">
//   <div id="new">new div</div>
// </div>


// イベントの設定 (対象の要素.何か起きたら = 何かする;)
// HTML
// <button id="btn">ボタン</button>

// JavaScript
window.onload = function() {
  var btn = document.getElementById('btn');
  btn.onclick = function() { //=> btnにクリックイベントを設定
    alert('clicked'); //=> クリックされたらclickedというアラートを出す
  };
};
/*======================
      イベントの種類
  onload      読み込み完了
  onresize    ウィンドウの幅が変わったとき
  onclick     マウスでクリックしたとき
  ondbclick   ダブルクリック
  onmouseover カーソルがのったとき
  onmouseout  カーソルが外れたとき
  onmousedown マウスのボタンを押したとき
  onmouseup   ボタンを離したとき
  onmousemove マウスを移動したとき
  onkeydown   キーボードのキーを押したとき
  onkeyup     キーを離したとき
  onfocus     フォーカスがあたったとき
  onblur      フォーカスが外れたとき
  onchange    フォームの値が変わったとき
  onsubmit    フォームを送信するとき
=======================*/

// 同じ要素に同じ種類のイベントを同時に設定する場合
// 対象の要素.addEventListener(何か起きたら, 何かする, false);

// HTML
// <div id="box">This is box</div>
// <button id="btn">ボタン</button>

// JavaScript
window.onload = function() {
  var btn = document.getElementById('btn');
  var box = document.getElementById('box');

  // 背景を赤くするイベント
  btn.addEventListener('click', function() {
    box.style.backgroundColor = 'red';
  }, false);

  // アラートを表示するイベント
  btn.addEventListener('click', function() {
    alert('clicked');
  }, false);
};
