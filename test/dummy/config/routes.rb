Rails.application.routes.draw do
  get 'blah/' => 'blah#index'
  get 'blah1/' => 'blah#blah1'

  get '/nodesc' => 'home#no_description'

  root to: "home#index"
end
