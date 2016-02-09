class UsersController < ApplicationController
  require 'bcrypt'
  def login

  end
  def new
    @user=User.new
  end
  end
    def register
      @user=User.new(user_params)
      if (@user.save)
        respond_to do |format|
          if @user.save
            format.html {redirect_to 'welcome/index', notice: 'You may sign now.'}
          else
            format.html {redirect_to 'new'}
            #format.json{@user}
          end
        end
      end
    end
    private
    def user_params_register
      params.require(:user).permit(:email,:password, :confirm_password)
end
