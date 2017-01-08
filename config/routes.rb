Rails.application.routes.draw do
  get 'vessels/index'

  get 'vessels/show'

  get 'vessels/new'

  get 'vessels/create'

  get 'vessels/edit'

  get 'vessels/update'

  root 'pages#home'

  devise_for 	:users,
              :path => '',
              :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'},
              :controllers => {:registrations => 'registrations'}

  resources :users, only: [:show]
  resources :vessels



end
