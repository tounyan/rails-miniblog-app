class SessionsController < ApplicationController
   def new
   end

   def create
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
         #Log user in and redirect to user's page
      else
         #Show error message
         flash.now[:danger] = 'Invalid username/password combination'
         render 'new'
      end
   end

   def destroy
   end
end
