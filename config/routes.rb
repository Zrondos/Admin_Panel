Rails.application.routes.draw do
  root 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students 

  resources :courses

  resources :instructors

  resources :cohorts

  resources :students_cohorts, only: [:new, :create]

  get '/add_students_to_cohort/:id', to: 'students_cohorts#add_students_to_cohort', as: :students_cohort_create
  post '/add_students_to_cohort/:id', to: 'students_cohorts#create_students_cohort'
  post '/add_students_to_cohort', to: 'cohorts#create_students_cohort', as: :add_students_to_cohort
  post '/remove_students', to: 'students#remove'
  post '/add_cohorts_students', to: 'students_cohorts#create_cohorts_student'

end
