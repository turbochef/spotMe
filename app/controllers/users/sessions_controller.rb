class Users::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]


  def toggle_activation
    current_user.active = !current_user.active
    current_user.save!

    flash[:notice] = "Updated"
    redirect_to root_path
  end

  def activities
    user_params = params.require(:user).permit(:tennis,:basketball, :racquetball, :soccer, :run, :weights, :swim, :spin, :climb)
    current_user.update_attributes(tennis: user_params[:tennis], basketball: user_params[:basketball],  racquetball: user_params[:racquetball], soccer: user_params[:soccer], run: user_params[:run], weights: user_params[:weights], swim: user_params[:swim], spin: user_params[:spin],climb: user_params[:climb])
    # current_user.tennis = user_params[:tennis]
    # current_user.save 
    redirect_to root_path
  end

  def index
    @user = current_user
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
