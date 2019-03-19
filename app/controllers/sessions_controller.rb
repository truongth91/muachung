class SessionsController < ApplicationController
  def new
  end

  def create 
      if (user = User.authenticate(params[:name], params[:password]))
            session[:user_id] = user.id
            if (user.isadmin == 0) 
                #admin
                redirect_to users_path
            else 
                #member
                redirect_to products_path
            end
      else
          redirect_to login_url, :alert => "Invalid username/password"
      end
  end

  def destroy
      session[:user_id] = nil
      redirect_to '/', :notice => "Logged out"
  end
end