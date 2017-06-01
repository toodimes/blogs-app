Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "post#index"

  get "/post/new" => 'post#new'
  post "/post" => 'post#create'

  get "/post/:id" => 'post#show'


  get "/post/:id/edit" => 'post#edit'
  patch "/post/:id" => 'post#update'

  #comments routes
  get "/comments/new" => 'comments#new'
  post "/comments" => 'comments#create'

  # patch "/score/:id/upvote" => 'score#update'

end
