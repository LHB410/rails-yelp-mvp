Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    collection do
      get :top
    end
  end
  resources :reviews, only: [:destroy]
end
