Rails.application.routes.draw do
  get 'contacts/index'
  get 'contacts/import'
  resources :contacts do
  	collection { post :import}
  end

  root to: "contacts#index"
end