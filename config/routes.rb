Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root'static#hello'
  get 'static/hello'
  get 'static/help'
  get 'static/about'
  

end