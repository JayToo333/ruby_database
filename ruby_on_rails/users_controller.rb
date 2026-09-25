class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    if @user.save
      puts "User created \"#{@user[:id]}\""
    return @user
    else
      puts "Error creating user \"#{@user[:id]}\""
      return @user
    end
  end

  def show
    User.find(@user[:id])
  end

  def edit
    User.find(@user[:id])
  end
  
  def update
    User.find(@user[:id])
    if user.update(updates)
      puts "User updated \"#{@user[:full_name]}\" with id \"#{@user[:id]}\" updated to \"#{updates}\""
    else
      puts "Error updating user: \"#{@user[:full_name]}\" with id \"#{@user[:id]}\" updated to \"#{updates}\""
    end
  end

  def new_user
    @user.merge(
      full_name: "a",
      email: "a#{@num}@gmail.com",
      location: "a",
      password: "a",
      password_confirmation: "a",
      bio: "123456789012345678901234567890"
    )
  end
  
  def updates
   {
    full_name: "b",
    email: "b#{num}@gmail.com",
    location: "b",
    password: "b",
    password_confirmation: "b",
  }
  end
  
  def num
    User.count + 1
  end
end

# private
#  def user_params
#     params.require(:user).permit(
#       :full_name,
#       :location,
#       :password,
#       :password_confirmation,
#       :bio
#       )
#   end
# end