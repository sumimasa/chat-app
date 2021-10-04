Rails.application.routes.draw do
  get 'messages/index'
  resources to:"messages#index"
  end
