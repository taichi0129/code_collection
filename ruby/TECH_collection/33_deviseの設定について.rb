# application_contoroller.rb
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters , if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :avatar])
  end
end

# このコードが何を表現しているのか説明せよ。
# ApplicationControllerを継承しているコントローラー（ranking, users, およびdevise用のコントローラー）内の全てのアクションが実行される前に、before_actionが実行される。

# もしそれがdeviseのコントローラーだったら（devise_controller?というメソッドの返り値がtrueだったら）configure_permitted_parametersを呼ぶ。

# configure_permitted_parametersの中で、devise_parameter_sanitizerが事項されるが、これはストロングパラメータのdevise版。サインアップ時に、nicknameとavatarカラムへの保存を許可する。

# deviseのコントローラーは、デフォルトではアプリケーション内に作成されません。興味がある方は、GitHubでソースコードを確認するとdeviseのコントローラーがApplictaionControllerを継承していることが確認できます。