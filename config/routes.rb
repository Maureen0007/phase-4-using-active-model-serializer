Rails.application.routes.draw do
  resources :movies, only: [:index, :show]

  get '/movies/:id/summary', to: 'movies#summary'

  def summaries
    movies = Movie.all
    render json: movies, each_serializer: MovieSumarrySerializer
  end
end
