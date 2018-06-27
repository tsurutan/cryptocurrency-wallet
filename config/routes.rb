Rails.application.routes.draw do
  root :to => 'home#index'
  get '/new_address' => 'home#new_address'
  get '/quick_send' => 'home#quick_send'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
