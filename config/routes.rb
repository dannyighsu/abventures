Rails.application.routes.draw do
  root "index#index"

  match '/start', to: 'applications#index', via: 'get'
  match '/apply', to: 'applications#new', via: 'get'
  match '/submit', to: 'applications#submit', via: 'post'

end
