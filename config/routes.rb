Rails.application.routes.draw do
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
  get 'reviews' => 'reviews#index'
  devise_for :users
end
