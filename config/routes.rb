Rails.application.routes.draw do

  # Site Root
  root 'home#index'
  
  # Barnabas URLS
  get 'barnabas'            => 'barnabas#index'
  
  # Coaching URLS
  get 'coaching'            => 'coaching#index'
  
  # About URLS
  get 'about'               => 'about#refresh'
  get 'about/refresh'       => 'about#refresh'
  get 'cal'                 => 'about#cal'
  get 'about/cal'           => 'about#cal'

  # Leadership URLS
  get 'leadership'          => 'leadership#nuggets'
  get 'leadership/nuggets'  => 'leadership#nuggets'
  get 'leadership/nuggets/:id' => 'leadership#nuggets'
  
  # Contact URLS
  get 'contact'             => 'contact#index'

end
