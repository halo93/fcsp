class PagesController < ApplicationController
  def show
    if valid_page?
      render "pages/#{params[:page]}"
    else
      render_404
    end
  end

  private
  def valid_page?
    File.exist? Pathname.new(Rails.root +
      "app/views/pages/#{params[:page]}.html.erb")
  end
end
