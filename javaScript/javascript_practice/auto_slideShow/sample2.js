window.onload = function() {
  //------------------------------------
  // スライドショーで見せたい画像ファイル郡
  //------------------------------------
  var imgset1 = [
    ['img/slideshow2.jpg', '1-1:赤ちゃん'],
    ['img/slideshow3.jpg', '1-2:女の子'],
    ['img/slideshow4.jpg', '1-3:楽しい'],
    ['img/slideshow.jpg', '1-4:赤ちゃん']
  ];
  var imgset2 = [
    ['img/slideshow5.jpg', '2-1:おかしい'],
    ['img/slideshow6.jpg', '2-2:満足'],
    ['img/slideshow7.jpg', '2-3:笑顔'],
    ['img/slideshow.jpg', '2-4:赤ちゃん']
  ];
  var imgset3 = [
    ['img/slideshow8.jpg', '3-1:仲良し'],
    ['img/slideshow9.jpg', '3-2:男の子'],
    ['img/slideshow10.jpg', '3-3:幸せ'],
    ['img/slideshow.jpg', '3-4:赤ちゃん']
  ];
  //----------------------------------
  // 対象ID、表示する画像群、切り替えミリ秒数のセット
  //----------------------------------
  var showset = [
    ['slideshow1', imgset1, 500],
    ['slideshow2', imgset2, 1000],
    ['slideshow3', imgset3, 1200]
  ];

  // -----------------------------------------------
  // ▼関数オブジェクトA：指定画像を順に表示させる処理（※書き換え不要）
  // -----------------------------------------------
  var ImageSlider = function() {
    this.ct = 0;   // カウンタ
    this.slide = function(target,imglist) {
      if( this.ct >= imglist.length ) {
          // カウンタが画像数よりも大きくなったら0番に戻す
          this.ct = 0;
      }
      // スライドショーの掲載領域を作っている対象要素を得る
      var targetId = document.getElementById(target);
      // 1つ目のimg要素にある画像URLを置き換える
      targetId.getElementsByTagName('img')[0].src = imglist[this.ct][0];
      // 1つ目のspan要素にあるキャプション文字列を置き換える
      targetId.getElementsByTagName('span')[0].innerHTML = imglist[this.ct][1];
      // カウンタを1進める
      this.ct++;
    }
  };

  // ---------------------------------------------
  // ▼関数オブジェクトB：スライドショーを制御する（※書き換え不要）
  // ---------------------------------------------
  var ShowController = function(target,imglist,intsec) {
    this.slideid = 0;        // タイマーID保持用
    this.imgsld  = 0;        // スライドショー実行オブジェクトの保持用
    this.target  = target;   // 対象要素のid名保持用
    this.imglist = imglist;  // 画像リストの変数
    this.intsec  = intsec;   // 画像切り替えミリ秒数
    this.startstop = function() {
      if( this.slideid == 0 ) {
          // 始まっていなければ始める
          var self = this;
          if( !self.imgsld ) { self.imgsld = new ImageSlider(); }
          this.slideid = setInterval( function() { self.imgsld.slide(self.target,self.imglist); },this.intsec);      // ※slideidには「0ではない正の整数値」が入る
      }
      else {
          // IDがあれば止める
          clearInterval(this.slideid);
          this.slideid = 0;
      }
    }
  };

  // ----------------------------------------------------
  // ▼すべてのボタンのクリックイベントに関数を割り当てる（※書き換え不要）
  // ----------------------------------------------------
  var ctrlButtons = document.getElementsByClassName('startstopbutton');
  for( var i = 0; i < ctrlButtons.length; i++ ) {
    var oneshow = new ShowController(showset[i][0],showset[i][1],showset[i][2]);
    (function(){
      var os = oneshow;
      ctrlButtons[i].onclick = function() { os.startstop(); };
    })();
  }
};