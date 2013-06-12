class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :login?

  def login?
    session[:login] ||= false
    session[:login]
  end
end
