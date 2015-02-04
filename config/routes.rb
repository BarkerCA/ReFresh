Rails.application.routes.draw do

  resources :nuggets

  # Site Root
  root 'home#index'
  
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
  
  # Contact URLS
  get 'contact'                 => 'contact#index'
  
  # Giving URLS
  get 'giving'                  => 'giving#index'

end
