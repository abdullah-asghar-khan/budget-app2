Rails.application.routes.draw do
  devise_for :users
    
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'     
    authenticated :user do
      root 'categories#index', as: :authenticated_root
    end

    unauthenticated do
      root 'home#index', as: :unauthenticated_root
    end
  end  

  resources :users do
    resources :categories, only: [:index, :show, :new, :create, :edit, :destroy]
    resources :expenses, only: [:index, :show, :new, :create, :edit, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 
end
