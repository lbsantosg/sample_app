Rails.application.routes.draw do
  root 'static_pages#home'
  #get '/help', to: 'static_pages#help' , as: 'helf'
  #routes a GET request for the URL/help to
  #the help action in the Static Pages controller
  get '/help', to: 'static_pages#help'
  get '/about', to:'static_pages#about'
  get '/contact', to:'static_pages#contact'
  get '/signup', to:'user#new'
end
