class ApplicationController < ActionController::Base
  before_action :authenticate_admin!, except: [:index, :show]
  protect_from_forgery with: :exception
end
