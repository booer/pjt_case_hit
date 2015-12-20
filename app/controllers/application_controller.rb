class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	def is_admin?
		redirect_to admin_login_path, notice: '你沒有 admin 權限' unless current_user && current_user.admin?
	end
end
