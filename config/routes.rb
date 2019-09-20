Rails.application.routes.draw do

  # get 'contacts/import'
  # resources :contacts do
  # 	collection { post :import}
  # end

  resources :contacts, only: [:index, :import]

  root to: "contacts#index"
end