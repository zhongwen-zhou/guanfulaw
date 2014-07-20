module Admin
	class BaseController < ActionController::Base
	  # before_filter :authorize_login
	  http_basic_authenticate_with name: "guanfu", password: "guanfulaw"
	  layout 'admin'

	  def current_user
	  	# User.find(session[:current_user_id]) if session[:current_user_id]
	  end

	  protected
	  def authorize_login
	  	return render :json => '请登录！', :status => 401 if current_user.nil?
	  end

	end
end
