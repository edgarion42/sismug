class ApplicationController < ActionController::Base
  include SesionesHelper
  protect_from_forgery with: :exception
end
