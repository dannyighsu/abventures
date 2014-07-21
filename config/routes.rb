Rails.application.routes.draw do
  root "index#index"

  match '/apply', to: 'applications#new', via: 'get'
end
