class HomeController < ApplicationController
  def index
    @age = (params['age'] || @current_user.age || 99).to_i
    # @response = ThemoviedbApi.list_movies(params['age'] || @current_user.age || 99)
    # @movies = @response['results']
  end

  def movies
    @age = (params['age'] || @current_user.age || 99).to_i
    @response = ThemoviedbApi.list_movies(@age)
    @movies = @response['results']
    render layout: false
  end

  def test
  end

  def uitest
  end
end
