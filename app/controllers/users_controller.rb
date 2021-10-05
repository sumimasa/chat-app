class UsersController < ApplicationController
  def edit
  end
  
  def update
    if current_user.update(users_parameter)
      redirect_to root_path
    else 
      render :edit
    end
    
  end


  private
    def users_parameter
      params.require(:user).permit(:name,:email)
    end
end
