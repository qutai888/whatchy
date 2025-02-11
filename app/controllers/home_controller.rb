class HomeController < ApplicationController
  def index
    @shows = Shows::UnseenQuery.new.for_user(current_user, future: false).sorted_by_title.page(page)
  end

  private

  def page
    params[:page] || 1
  end
end
