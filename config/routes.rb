Rails.application.routes.draw do
  get 'sweet/index' => "sweet#index"
  get 'sweet/new' => "sweet#new"
  get 'sweet/:id' => "sweet#show"
  post "sweet/create" => "sweet#create"
  get 'sweet/:id/edit' => "sweet#edit"
  post 'sweet/:id/update' => "sweet#update"
  post 'sweet/:id/destroy' => "sweet#destroy"

  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
