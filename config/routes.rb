Rails.application.routes.draw do
 resources :calculators, only: [:index, :new, :create, :show]
 get 'calculators/index'
 root "calculators#new"
 post 'calculate', to: 'calculators#calculate'
end
