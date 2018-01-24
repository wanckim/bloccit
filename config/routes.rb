Rails.application.routes.draw do
  resources :topics do
    resources :posts
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  resources :questions

  resources :advertisements

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get 'faq' => 'welcome#faq'

  root 'welcome#index'

end
