class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def add
    @user = User.new
  end

  def create
    @user = User.new(
      # [dbのカラム]： params[:inputタグのname属性の値]
      name: params[:name],
      mail: params[:email],
      password_digest: params[:password]
    )
    if @user.save
      session[:user_name] = @user.name
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users")
    else
      render("users/add")
    end
  end

end
