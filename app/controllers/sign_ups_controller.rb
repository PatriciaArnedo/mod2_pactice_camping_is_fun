class SignUpsController < ApplicationController
  def new
    @signup = SignUp.new
  end

  def create
    @signup = SignUp.new(signup_params)
    if @signup.save
      redirect_to camper_path(@signup.camper_id)
    else
      flash[:errors] = @signup.errors.full_messages
      redirect_to new_sign_up_path
    end
  end


  private

  def signup_params
    params.require(:sign_up).permit(:camper_id, :activity_id, :time)
  end

end
