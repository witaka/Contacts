Rails.application.routes.draw do

  get 'contacts/import'
  resources :contacts do
  	collection { post :import}
  end

  resources :contacts, only: [:index, :import, :show] do
    resources :phones, only: [:create, :index, :show, :update] 
  end

  resources :phones, only: [:create, :index, :show, :destroy, :update] 

  root to: "contacts#welcome"
end