Rails.application.routes.draw do
  get 'contacts/new'
  get 'home/index'
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  resource :contacts, only: [:new, :create], path_names: { :new => ''}

  resources :articles
end
