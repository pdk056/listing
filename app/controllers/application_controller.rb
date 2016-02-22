class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    search=params[:search]
    category=params[:category]
    city= params[:city]
    region= params[:region]
    bedrooms=params[:bedrooms]

    @lists = List.all.paginate(:page => params[:page], :per_page => 12).search(search, category, city, region, bedrooms)
    if @lists.blank?
      redirect_to lists_path
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

end
