class Users::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]


  def toggle_activation
    current_user.active = !current_user.active
    current_user.save!

    flash[:notice] = "Updated"
    redirect_to root_path
  end
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # You can put the params you want to permit in the empty array.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
