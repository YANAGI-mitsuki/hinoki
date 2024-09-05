class UsersController < ApplicationController
  def show
    @user = User.last
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id # ユーザー登録後、そのままログイン状態にするため、セッションにユーザーIDを保存
      flash[:success] = '登録しました' # flashハッシュにsuccessというキーでメッセージ'登録しました'を、次のリクエスト（通常はリダイレクト後のページ）までメッセージを保持し、表示する
      redirect_to root_path # rootパスにリダイレクト
    else
      flash.now[:danger] = '登録できませんでした' # flash.nowハッシュにdangerというキーでメッセージ'登録できませんでした'を、次のリクエストまでではなく、そのリクエスト内でのみメッセージを保持し、表示する
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permmit(
      :name, :email, :password, :password_confirmation
      )
  end
end
