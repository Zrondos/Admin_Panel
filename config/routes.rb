Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'students#index'

  resources :students

  resources :courses

  resources :instructors

  resources :cohorts

end
