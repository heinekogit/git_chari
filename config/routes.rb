Rails.application.routes.draw do


  devise_for :users
    root    'top#index'
    
    resources :top
    resources :courses do
      resources :reports
    end
    

end
