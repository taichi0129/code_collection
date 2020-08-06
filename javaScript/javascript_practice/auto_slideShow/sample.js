window.onload = function() {
  //------------------------------------
  // スライドショーで見せたい画像ファイル郡
  //------------------------------------
  var imgset = [
    ['img/slideshow2.jpg', '1:赤ちゃん'],
    ['img/slideshow3.jpg', '2:女の子'],
    ['img/slideshow4.jpg', '3:楽しい'],
    ['img/slideshow5.jpg', '4:おかしい'],
    ['img/slideshow6.jpg', '5:満足'],
    ['img/slideshow7.jpg', '6:笑顔'],
    ['img/slideshow8.jpg', '7:仲良し'],
    ['img/slideshow9.jpg', '8:男の子'],
    ['img/slideshow10.jpg', '9:幸せ'],
    ['img/slideshow.jpg', '10:赤ちゃん']
  ];

  //----------------------------------
  // 指定画像を順に表示させる関数
  //----------------------------------
  var counter = 0;
  function slideimage() {
    if (counter >= imgset.length) {
      // カウンタが画像数よりも大きくなったら０番に戻す
      counter = 0;
    }
    // 対象要素の画像URLを次のURLに切り替える
    document.getElementById('slideshow').src = imgset[counter][0];
    // 対象要素のキャプションを次の文字列に切り替える
    document.getElementById('slidecaption').innerHTML = imgset[counter][1];
    // カウンタを１増やす
    counter++;
  }

  //---------------------------------
  // スライドショーを制御する関数
  //---------------------------------
  var slideid = 0;
  function startstopshow() {
    if (slideid === 0) {
      // 始まっていなければ始める
      slideid = setInterval(slideimage, 1000);
    } else {
      // IDがあれば止める
      clearInterval(slideid);
      slideid = 0;
    }
  }

  // ボタンクリックに関数を割り当てる
  document.getElementById('startstopbutton').onclick = startstopshow;
}