Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  get 'quotes' => 'quotes#index'

  get 'chapter/new'
  get 'chapter/:id' => 'chapter#show'

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

  mount Commontator::Engine => '/commontator'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
