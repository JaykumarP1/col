Rails.application.routes.draw do

  resources :teachers
  resources :teaches, has_many: :books
  resources :studs, has_many: :books
  resources :depts

  root :to => 'depts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
