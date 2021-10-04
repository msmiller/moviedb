#!/usr/bin/ruby
# @Author: msmiller
# @Date:   2021-10-03 14:21:07
# @Last Modified by:   msmiller
# @Last Modified time: 2021-10-03 16:56:34
#
# Copyright (c) Sharp Stone Codewerks / Mark S. Miller

module ThemoviedbApi
  include HTTParty

  BASEURL = 'https://api.themoviedb.org/3'

  # ThemoviedbApi.list_movies

  def self.list_movies(age=99,offset=0)

    age_filter = ''
    if age <= 5 
      age_filter = "&certification_country=US&certification=G"
    elsif age <= 13 
      age_filter = "&certification_country=US&certification=G|PG"
    elsif age <= 18 
      age_filter = "&certification_country=US&certification=G|PG|PG-13"
    end

    url = "#{BASEURL}/discover/movie?api_key=#{ENV['TMDB_KEY']}&language=en-US&sort_by=popularity.desc&include_adult=false#{age_filter}"
    response = HTTParty.get(url)
    unless response.code == 200
      raise url + "\n" + response.to_s
    end
    return response.parsed_response
  end

  # ThemoviedbApi.get_certifications

  def self.get_certifications
    url = "#{BASEURL}/certification/movie/list?api_key=#{ENV['TMDB_KEY']}"
    response = HTTParty.get(url)
    unless response.code == 200
      raise url + "\n" + response.to_s
    end
    return response.parsed_response
  end

end


# https://api.themoviedb.org/3/discover/movie?api_key=7db11a720900684980bdf7b7489534ca&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate

# https://api.themoviedb.org/3/movie/550?api_key=7db11a720900684980bdf7b7489534ca
=begin

=end
