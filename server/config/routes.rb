Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do 
      resources :songs, except: :show
      resources :users
      resources :albums
      get "/songs/:title/:id", to: "songs#show"
      get "/genres/:title/songs", to: "genres#show"
      post 'authenticate', to: 'authentication#authenticate'
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
