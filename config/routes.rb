Rails.application.routes.draw do

  # Site Root
  root 'home#index'
  
  # Barnabas URLS
  get 'barnabas' => 'barnabas#index'
  
  # Coaching URLS
  get 'coaching' => 'coaching#index'

end
