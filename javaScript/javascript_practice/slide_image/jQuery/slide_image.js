// htmlの構築を待ってから処理を開始
$(function() {
  // 要素の取得
  var $container = $('#sample-slideshow');
  var $title     = $container.find('.title');
  var $imgs      = $container.find('.photo img');
  var $nextBtn   = $container.find('.nextBtn');
  var $prevBtn   = $container.find('.prevBtn');

  // 画像をアニメーションして表示するための関数
  function showPhoto(index) {
    var $current = $imgs.filter(':visible');
    var $target  = $imgs.eq(index);
    var title    = $target.attr('alt');
    var viewNumber = index + 1;
    $title.text('[' + viewNumber + ']' + title);
    $current.fadeOut();
    $target.fadeIn();
  }

  // 画像の数の取得
  var len = $imgs.length;

  // インデックスの初期値
  var currentIndex = 0;

  // 次へを押した時の動作
  $nextBtn.click(function() {
    currentIndex++;
    if(currentIndex >= len) {
      currentIndex = 0;
    }
    showPhoto(currentIndex);
  });

  // 前へを押した時の動作
  $prevBtn.click(function() {
    currentIndex--;
    if(currentIndex < 0) {
      currentIndex = len - 1;
    }
    showPhoto(currentIndex);
  });

  // 初期表示
  showPhoto(currentIndex);
});