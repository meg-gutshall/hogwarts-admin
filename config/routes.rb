Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#home'
  post '/cast-spell', to: 'welcome#cast_spell'

  resources :teachers, only: [:index, :show]
  resources :students, only: [:index, :show]
  resources :subjects, only: [:index, :show]
  resources :houses, only: [:index, :show]

  # Wishlist
  # /students => shows all students with link to their show pages
  # /houses => shows all houses with links to their show pages
  # /houses/1 => shows first house with links to house's teachers and students show pages
  # /houses/1/students/1 => shows first student of first house with link to student's subjects show pages
  # /houses/1/teachers/1 => shows first teacher of first house

end
