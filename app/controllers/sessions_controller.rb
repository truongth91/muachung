class SessionsController < ApplicationController
  def new
  end

  def create 
      if (user = User.authenticate(params[:name], params[:password]))
            session[:user_id] = user.id
            session[:user_name] = user.name
            session[:user_admin] = user.isadmin
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
        session[:user_name] = nil
        session[:user_admin] = nil
        redirect_to login_url
  end
end