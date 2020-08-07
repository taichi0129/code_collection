window.onload = function() {
  (function() {
    // スライダーとサムネイルに表示する画像を配列で代入
    const setImage = [
      'img/slideshow.jpg',
      'img/slideshow2.jpg',
      'img/slideshow3.jpg',
      'img/slideshow4.jpg'
    ];

    const view = document.getElementById('view');
    const prev = document.getElementById('prev');
    const next = document.getElementById('next');
    const thumbnailList = document.getElementById('thumbnailList');

    // ulタグの中にサムネイル画像を作成する際に使用
    let list;
    let image;
    // 現在表示されている画像のインデックス番号
    let current = 0;
    // 連続クリックを防ぐためのボタンのイベント処理に使用
    let clickBtn = true;

    // ulタグの中身にサムネイルを作成するための関数
    function createThumbnailItem() {
      for (let i = 0; i < setImage.length; i++) {
        list = document.createElement('li');
        image = document.createElement('img');
        image.src = setImage[i];
        list.appendChild(image);
        thumbnailList.appendChild(list);

        if (i === 0) {
          // 一番最初のサムネイル画像にselectedを付与
          list.classList.add('selected');
        }

        list.addEventListener('click', function() {
          // 選択されたサムネイルのsrc属性をスライドショーのimgタグのsrc属性に代入
          view.src = this.children[0].src;

          for (let j = 0; j < thumbnailList.children.length; j++) {
            // サムネイル画像のselectedを消してクリックしたサムネイル画像にselectedクラスを付与
            thumbnailList.children[j].classList.remove('selected');
          };
          this.classList.add('selected');
          // サムネイル画像のsrc属性をsliceを使って番号のみ切り出す
          let currentImage = this.children[0].src.slice(-6, -4);
          // Numberオブジェクトを使って数値型に変換後currentに代入
          current = Number(currentImage) - 1;
        });
      };
    }
    createThumbnailItem();

    // ボタンに関するクリックイベントを定義
    prev.addEventListener('click', function() {
      if (clickBtn === true) {
        clickBtn = false;
        // スライドショーのクラスにappearクラスを追加
        view.classList.add('appear');
        thumbnailList.children[current].classList.add('selected');
        setTimeout('view.classList.remove("appear");', 2100);
        setTimeout(function() {
          clickBtn = true;
        }, 2100);
      } else {
        return false;
      }
    });
    
    next.addEventListener('click', function() {
      if (clickBtn === true) {
        clickBtn = false;
        view.classList.add('appear');
        thumbnailList.children[current].classList.remove('selected');
        current++;
        if (current > setImage.length - 1) {
          current = 0;
        }
        view.src = setImage[current];
        thumbnailList.children[current].classList.add('selected');
        setTimeout('view.classList.remove("appear");', 2100);
        setTimeout(function() {
          clickBtn = true;
        }, 2100);
      } else {
        return false;
      }
    });

    function autoPlay() {
      setTimeout(function() {
        next.click();
        autoPlay();
      }, 5000);
    }
    window.onload = autoPlay();
  })();
};