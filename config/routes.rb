require "resque/server"

Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount Resque::Server.new, at: "/resque"
end
