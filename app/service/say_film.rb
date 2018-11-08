class SayFilm
  Tmdb::Api.key(Rails.application.credentials.dig(:api_key))
  def perform
    u = Array.new
    i = Tmdb::Movie.find("batman")
    i.each do |movie|
    puts  movie.original_title
     u = movie.id
    puts u
    puts Tmdb::Movie.casts(u)
    puts movie.release_date

    end

    p "lol"
  end
end
