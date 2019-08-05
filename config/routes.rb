Rails.application.routes.draw do
  resources :list_items do 
  	member do
  		get :soft_delete
      get :restore
  	end
  end

  resources :lists do
  	member do
  		get :soft_delete
      get :restore
  	end
  end

  get 'trash_lists', to: 'lists#trash_lists'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root :to => "lists#index"
end
