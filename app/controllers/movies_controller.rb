class MoviesController < ApplicationController
  def search
  end
  def show

    tab =[]
    @value = SayFilm.new.perform
    puts "la class --> #{@value.inspect}"

end

end
