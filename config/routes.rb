Rails.application.routes.draw do
  resources :students
  resources :departments
  resources :semesters
  resources :courses
  resources :professors
  resources :sections
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "sections#index"
end
