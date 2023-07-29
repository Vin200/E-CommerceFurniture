class AdminController < ApplicationController
  def login
    if request.post?
      if params[ :username ] == 'admin' && params[ :password ] == 'nimda'
      session[ :admin] = 'admin'
      redirect_to stores_url
      else
        flash[:notice] = 'Invalid Username/Password'
        render :action => 'login'
      end
    end
  end

  def logout
    session[:admin] = nil
    flash[:notice] = 'You are Logged out'
    redirect_to admin_login_url
  end
end
