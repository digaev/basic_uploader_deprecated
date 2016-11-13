Rails.application.routes.draw do
  resources :attachments, only: [:new, :create]
end
