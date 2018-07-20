Rails.application.routes.draw do
  root 'quotes#index'

  get 'chapter/new'

  get 'entity/new'

  get 'quotes/new'
  get 'quotes/:id' => 'quotes#show'
  post 'quotes/new'

  get 'characters/search'

  get 'rating/vote'

  resources :quotes do
    get :autocomplete_character_name, :on => :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
