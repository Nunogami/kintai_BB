class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: [:destroy, :edit_basic_info, :update_basic_info]
  
  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "ユーザーの新規作成に成功しました。"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    if @user.update_attributes(user_params)
      flash[:success] = "ユーザー情報を更新しました。"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "削除しました。"
    redirect_to users_url
  end
  
  def edit_basic_info
    @user = User.find(params[:id])
  end
  
  def update_basic_info
    @user = User.find(params[:id])
    if @user.update_attributes(basic_info_params)
      flash[:success] = "基本情報を更新しました。"
      redirect_to @user   
    else
      render 'edit_basic_info'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email,:remember_me, :department, :password, :password_confirmation)
  end
  
    def basic_info_params
      params.require(:user).permit(:basic_time, :work_time)
    end
    
    # beforeアクション

    # ログイン済みユーザーか確認
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "ログインしてください。"
        redirect_to login_url
      end
    end
    
    # 正しいユーザーかどうか確認
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    
        # 管理者かどうか確認
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
    

    
end
