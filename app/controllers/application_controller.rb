class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def file
    header = request.headers.to_h
    header_info = header.reduce do |k, v|
      "#{k} #{v}\n<br/>"
    end
    render :text => header_info
  end
end
