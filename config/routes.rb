# == Route Map
#
#        Prefix Verb   URI Pattern                    Controller#Action
#       tenants GET    /tenants(.:format)             tenants#index
#               POST   /tenants(.:format)             tenants#create
#    new_tenant GET    /tenants/new(.:format)         tenants#new
#   edit_tenant GET    /tenants/:id/edit(.:format)    tenants#edit
#        tenant GET    /tenants/:id(.:format)         tenants#show
#               PATCH  /tenants/:id(.:format)         tenants#update
#               PUT    /tenants/:id(.:format)         tenants#update
#               DELETE /tenants/:id(.:format)         tenants#destroy
#       reviews GET    /reviews(.:format)             reviews#index
#               POST   /reviews(.:format)             reviews#create
#    new_review GET    /reviews/new(.:format)         reviews#new
#   edit_review GET    /reviews/:id/edit(.:format)    reviews#edit
#        review GET    /reviews/:id(.:format)         reviews#show
#               PATCH  /reviews/:id(.:format)         reviews#update
#               PUT    /reviews/:id(.:format)         reviews#update
#               DELETE /reviews/:id(.:format)         reviews#destroy
#    properties GET    /properties(.:format)          properties#index
#               POST   /properties(.:format)          properties#create
#  new_property GET    /properties/new(.:format)      properties#new
# edit_property GET    /properties/:id/edit(.:format) properties#edit
#      property GET    /properties/:id(.:format)      properties#show
#               PATCH  /properties/:id(.:format)      properties#update
#               PUT    /properties/:id(.:format)      properties#update
#               DELETE /properties/:id(.:format)      properties#destroy
#         login GET    /login(.:format)               session#new
#               POST   /login(.:format)               session#create
#

Rails.application.routes.draw do


  # get 'properties/index'

  # get 'properties/create'

  # get 'properties/new'

  # get 'properties/edit'

  # get 'properties/show'

  # get 'properties/update'

  # get 'properties/destroy'

  # get 'reviews/index'

  # get 'reviews/create'

  # get 'reviews/new'

  # get 'reviews/edit'

  # get 'reviews/show'

  # get 'reviews/update'

  # get 'reviews/destroy'
  root :to => 'properties#index'

  get 'signup'  => 'tenants#new' 

  resources :tenants, :reviews, :properties

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  
end
