<?php

// 変数
$test = 123;
$test2 = 456;

echo $test . $test2; //=> 123456
echo $test + $test2; //=> 579

// 配列
$array = [1,2,3];

echo $array; //=> Array
echo $array[0]; //=> 1

echo '<pre>';
var_dump($array); //=> 配列として確認できる
echo '</pre>';

$array2 = [
  ['赤','青','黃'],
  ['緑','紫','黒']
];

echo '<pre>';
var_dump($array2); //=> 配列として確認できる
echo '</pre>';

echo $array2[1][1]; //=> 紫

// 連想配列
$array_member = [
  'name' => '本田',
  'height' => 170,
  'hobby' => 'サッカー'
];

echo $array_member['hobby']; //=> サッカー

echo '<pre>';
var_dump($array_member); //=> 連想配列として確認できる
echo '</pre>';

$array_member2 = [
  '本田' => [
    'height' => 170,
    'hobby' => 'サッカー'
  ],
  '香川' => [
    'height' => 165,
    'hobby' => 'サッカー'
  ]
];

echo $array_member2['香川']['height']; //=> 165

echo '<pre>';
var_dump($array_member2); //=> 連想配列として確認できる
echo '</pre>';

$array_member3 = [
  '1kumi' => [
    '本田' => [
      'height' => 170,
      'hobby' => 'サッカー'
    ],
    '香川' => [
      'height' => 165,
      'hobby' => 'サッカー'
    ]
  ],
  '2kumi' => [
    '長友' => [
      'height' => 160,
      'hobby' => 'サッカー'
    ],
    '乾' => [
      'height' => 168,
      'hobby' => 'サッカー'
    ]
  ]
];

echo $array_member3['2kumi']['長友']['height']; //=> 160

echo '<pre>';
var_dump($array_member3); //=> 連想配列として確認できる
echo '</pre>';


//演算子
$int1 = 9;
$int2 = 4;

echo $int1 + $int2; //=> 13
echo $int1 - $int2; //=> 5
echo $int1 * $int2; //=> 36
echo $int1 / $int2; //=> 2
echo $int1 % $int2; //=> 1

//条件分岐と繰り返し
//if文
$height = 90;

if ($height >= 91) {
  echo '身長は' . $height . 'cmです';
}

if ($height <= 90) {
  echo '身長は' . $height . 'cmになります';
}

//elseも書けるがわかりづらくなるためなるべく使わないほうがベター
if ($height === 91) {
  echo '身長は' . $height . 'cmです';
} else {
  echo '身長は' . $height . 'cmではありません';
}

// ==   一致
// ===  型も一致


//一致していない場合true
if ($height !== 90) {
  echo '身長は90cmではありません';
}

//データが入っているか確認
$str = '1';
if (!empty($str)) {
  echo '変数は空ではありません';
}

//and と or
$signal1 = 'red';
$signal2 = 'blue';
if ($signal1 === 'red' && $signal2 === 'blue') {
  echo '赤と青です';
}

if ($signal1 === 'red' || $signal2 === 'blue') {
  echo '赤か青です';
}

//三項演算子
$math = 80;

$comment = $math > 80 ? 'good' : 'not good';
echo $comment;


//foreach
$members = [
  'name' => '本田',
  'height' => 170,
  'hobby' => 'サッカー'
];

//バリューのみ表示
foreach ($members as $member) {
  echo $member;
}

//キーとバリューそれぞれ表示
foreach($members as $key => $value) {
  echo $key . 'は' . $value . 'です';
}

//foreachのネスト
$members2 = [
  '本田' => [
    'height' => 170,
    'hobby' => 'サッカー'
  ],
  '香川' => [
    'height' => 165,
    'hobby' => 'サッカー'
  ]
];

foreach ($members2 as $members1) {
  foreach($members1 as $member => $value) {
    echo $member . 'は' . $value . 'です';
  }
}

//for文(繰り返す回数が決まっていたら)
for ($i = 0; $i < 10; $i++) {
  echo $i;
}

//while文(繰り返す回数が決まっていなかったら)
$j = 0;
while($j < 5) {
  echo $j;
  $j++;
}

//switch文(どちらかというとif文を使ったほうが良い)
$data = 1;

switch($data){
  case 1:
    echo '1です';
  break;
  case 2:
    echo '2です';
  break;
  case 3:
    echo '3です';
  break;
  default:
  echo '1-3ではありません';
}

//関数の定義

//インプット引数なし
//アウトプット戻り値なし
function test(){
  // 処理
  echo 'テスト';
}

//インプット引数あり
//アウトプット戻り値なし
$comment = 'コメント';

function getComment($string) {
  echo $string;
}

getComment($comment);

//インプット引数なし
//アウトプット戻り値あり
function getNumberOfComment() {
  return 5;
}

echo getNumberOfComment();

// 引数２つ
// 戻り値あり
function sumPrice($int1, $int2) {
  $int3 = $int1 + $int2;
  return $int3;
}

$total = sumPrice(3,5);

echo $total;


/* 組み込み関数一例
ーーーーーーー文字列ーーーーーーーー
strlen()       文字列の長さを取得
mb_strlen()    マルチバイトでの（日本語）での長さを取得
str_replace('変換文字', '変換後文字', 変数)  文字列を置き換える
explode('区切り文字', 変数)   指定の区切り文字で配列に分割する
implode  explodeの逆
preg_match('正規表現', 変数)  特定の文字列が含まれているか確認する
substr('文字列', 指定数)   指定数から文字列を取得する
mb_substr  substrのマルチバイト版
ーーーーーーー配列ーーーーーーーーー
array_push(変数, '文字列')   配列に配列を追加する
*/




?>