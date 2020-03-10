Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  match '/movies/:id/similar_movies', to: 'movies#similar_movies', as: :similar_movies, via: :get
end
