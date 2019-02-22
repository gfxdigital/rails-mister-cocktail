Rails.application.routes.draw do
 get '/', to: 'cocktails#index'
  resources :cocktails, only: [:new, :create, :show, :index, :destroy] do
    resources :doses, only: [:new, :create, :destroy]
  end
  resources :doses, only: [:destroy]
end
