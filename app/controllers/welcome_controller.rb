class WelcomeController < ApplicationController
  def index
  end

  def login
  end

  def validate
    params[:email] ||= ''
    params[:password] ||= ''
    if User.validate params[:email], params[:password]
      session[:login] = true
      session[:user] = User.get_user.id
      redirect_to platform_root_path
    else
      redirect_to login_path, notice: 'Falha no login'
    end
  end

  def logout
    session[:login] = false
    session[:user] = nil
    redirect_to '/'
  end
end