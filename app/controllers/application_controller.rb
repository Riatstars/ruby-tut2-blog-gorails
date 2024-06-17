class ApplicationController < ActionController::Base
  include Pagy::Backend

  private
    def set_theme 
      cookies[:theme] ||= 'light' 
      cookies[:theme] = params[:theme] if params[:theme].in? ['dark', 'light']
      @theme = cookies[:theme]
    end


end
