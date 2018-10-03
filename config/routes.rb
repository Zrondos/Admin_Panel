Rails.application.routes.draw do
  root 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students

  resources :courses

  resources :instructors

  resources :cohorts

  resources :students_cohorts, only: [:new, :create]


end
