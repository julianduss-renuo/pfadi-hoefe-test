class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  helper_method :current_leiter


  def current_leiter
    @current_leiter ||= Leiter.find(session[:leiter_id]) if session[:leiter_id]
  end
end
