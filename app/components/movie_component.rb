# frozen_string_literal: true

class MovieComponent < ViewComponent::Base

  include Heroicon::ApplicationHelper

  def initialize(movie:)
    @movie = movie.to_dot
  end

  def formatted_date
    Date.parse(@movie.release_date).strftime("%b %d, %Y")
  end

  def dots_thingy
    "#{heroicon('dots-circle-horizontal', variant: 'solid', options: { class: 'z-20 h-8 w-8 absolute opacity-50 text-white top-10 right-10 shadow' })}"
  end

  def rating_thingy
    borders = []
    if @movie.vote_average > 2.5
      borders << 'border-t-2'
    end
    if @movie.vote_average > 5
      borders << 'border-r-2'
    end
    if @movie.vote_average > 7.5
      borders << 'border-b-2'
    end
    borders << 'border-l-none'
    "<div class='z-20 ring-4 ring-gray-800 bg-gray-800 rounded-full px-2 py-3 absolute text-xs text-white bottom-20 right-10 shadow #{borders.join(' ')} border-green-400'>#{(@movie.vote_average * 10).to_i}%</div>"
  end

end
