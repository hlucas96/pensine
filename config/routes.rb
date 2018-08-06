Rails.application.routes.draw do
  root 'home#index'

  get 'quotes' => 'quotes#index'

  get 'chapter/new'

  get 'entity/new'
  get 'entity/:id' => 'entity#show'

  get 'quotes/new'
  get 'quotes/:id' => 'quotes#show'
  post 'quotes/new'

  get 'characters/search' => 'character#search'
  get 'characters/:id' => 'character#show'

  get 'rating/vote'

  resources :quotes do
    get :autocomplete_character_name, :on => :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
