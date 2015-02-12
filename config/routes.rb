Rails.application.routes.draw do

  # Site Root
  root 'home#index'
  
  # Admin URLS
  get "admin" => "admin/home#index"
  namespace :admin do

    get "home"    => "home#index",        :as => "root"
    get "logout"  => "sessions#destroy",  :as => "log_out"
    get "login"   => "sessions#new",      :as => "log_in"
    get "signup"  => "users#new",         :as => "sign_up"

    resources :users
    resources :sessions
    resources :nuggets
    resources :contacts
  end
  
  # Design URLS
  get 'design'                  => 'design#index'
  
  # Barnabas URLS
  get 'barnabas'                => 'barnabas#index'
  
  # Coaching URLS
  get 'coaching'                => 'coaching#index'
  
  # About URLS
  get 'about'                   => 'about#refresh'
  get 'about/refresh'           => 'about#refresh'
  get 'cal'                     => 'about#cal'
  get 'about/cal'               => 'about#cal'
  get 'ron'                     => 'about#ron'
  get 'about/ron'               => 'about#ron'

  # Leadership URLS
  get 'leadership'              => 'leadership#nuggets'
  get 'leadership/nuggets'      => 'leadership#nuggets'
  get 'leadership/nuggets/:id'  => 'leadership#nugget'
  get 'leadership/nugget_test'  => 'leadership#nugget_test'
  
  # Contact URLS
  get 'contact'                 => 'contacts#new'
  get 'contact/sent'            => 'contacts#sent'
  get 'contact/sent/:data'      => 'contacts#sent'
  get 'contact/finished'        => 'contacts#finished'
  get 'contact/finished/:data'  => 'contacts#finished'
  post 'contact'                => 'contacts#create'
  
  # Giving URLS
  get 'giving'                  => 'giving#index'

end
