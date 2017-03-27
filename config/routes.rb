Rails.application.routes.draw do
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # for the Creative bootstrap.. info https://github.com/MrPowers/frontend-generators

  root to: 'creatives#index'


  resources :photos, only: [:new, :create, :edit, :update, :destroy, :show]
  resources :bookings, only: [:new, :create, :edit, :update]
  resources :contents, only: [:index, :edit, :update,]
  match 'information', to: 'contents#index', via: :all
  resources :users, only: [:show]
  resources :guestbooks, only: [:show, :index, :new, :create]
  resources :questions, only: [:create]


  post '/email_processor' => 'griddler/emails#create'

  namespace :admin do
    root 'pages#index'
    resources :bookingcoms, only: [:index]
    resources :bookings, except: [:show]
    resources :guestbooks, except: [:show]
    resources :seasons, except: [:show]
  end
end
