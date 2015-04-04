Rails.application.routes.draw do
  get '/nodesc' => 'home#no_description'

  root to: "home#index"
end
