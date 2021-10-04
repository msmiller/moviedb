class HomeController < ApplicationController
  def index
    @response = ThemoviedbApi.list_movies(@current_user.age || 99)
    @movies = @response['results']
  end

  def test
  end

  def uitest
  end
end
