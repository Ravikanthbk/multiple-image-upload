class UsersController < ApplicationController
  resource_controller

  new_action.before do
    @user.images.build
  end

#  create.flash "User successfully created!"
  
  def create
    @user = User.new(params[:user])

    if @user.save
      responds_to_parent do
       render :update do |page|
         page.replace_html "stuff", 'User successfully created.'
         page.visual_effect :highlight, "stuff"          
       end
      end
    else
      render :action => "new" 
    end
  end  
 
end
