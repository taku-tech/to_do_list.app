class ApplicationController < ActionController::Base
	# クロスサイトリクエストフォージェリ (CSRF)への対応策コード
	protect_from_forgery with: :exception

	before_action :authenticate_user!
	# ユーザネイムでのログイン機能
	before_action :configure_permitted_parameters, if: :devise_controller?

  protected
	# ユーザネイムでのログイン機能
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end	
end
