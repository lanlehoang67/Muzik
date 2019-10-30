Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do 
      resources :songs, except: :show
      get "/songs/:title/:id", to: "songs#show"
      get "/genres/:title/songs", to: "genres#show"
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
