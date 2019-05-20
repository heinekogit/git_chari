Rails.application.routes.draw do


  devise_for :users
    root    'top#index'
    
    # get  'copyrecord'  => 'course#copyrecord'  # 5/19まで
    post  'copyrecord' => 'courses#copyrecord'
    
    resources :top
    resources :users
    resources :courses do
      resources :reports
    end
    

end
