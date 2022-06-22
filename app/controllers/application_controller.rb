def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
end

class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :warning
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :user_location])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :user_location])
  end
end
