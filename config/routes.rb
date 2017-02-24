Rails.application.routes.draw do
    root 'chat_rooms#index'
    devise_for :users, :controllers => {registrations: 'registrations'}
    resources :chat_rooms, only: [:index, :new, :create, :show]
    resources :messages, only: [:create]
end
