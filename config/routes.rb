Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create' 
  
  Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get 'lists/new'
    get 'top' => 'homes#top'
    post 'lists' => 'lists#create'
    get 'lists' => 'lists#index'
  
  end

  Rails.application.routes.draw do
    get 'top' => 'home#top'
    resources :lists
  end

  get 'lists/edit'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
