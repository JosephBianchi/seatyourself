class SessionsController < ApplicationController
  def new

  end

def create
  user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        flash[:notice] = "Welcome"
        redirect_to root_url
      else
        render "new"
      end
    end

   def destroy
      session[:user_id] = nil
      flash.notice = "You've logged out"
      redirect_to root_url
    end
  end
