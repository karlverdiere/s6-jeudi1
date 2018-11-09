class SayFilm
  Tmdb::Api.key(Rails.application.credentials.dig(:api_key))
  def perform(movie_name)

    @hash = Hash.new
    @hash1 = Hash.new
    @hash_de_compression  = Hash.new
    @tab_url = Array.new
    i = Tmdb::Movie.find("batman")#renseigner ici le film qui vous interesse
    i.each do |movie|
    title =  movie.original_title
     @tab_url = movie.id
     Tmdb::Movie.credits(@tab_url)
    date = movie.release_date
    @hash =  Tmdb::Movie.credits(@tab_url)
      @hash1 = @hash["crew"][0]["name"]
     @hash1
    backdrop = movie.backdrop_path
      @hash_de_compression[movie.id] = {"title": title, "date": date, "director": @hash1, "backdrop": backdrop}
      if movie.id == 20
        return @hash_de_compression
    end


    return @hash_de_compression
  end
end
