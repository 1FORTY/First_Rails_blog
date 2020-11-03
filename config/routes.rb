Rails.application.routes.draw do
  get 'about/index'
  get 'terms/index'
  get 'contacts/new'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :contacts, only: [:new, :create], path_names: { :new => ''}
  resources :articles
end
