UcsXc::Application.routes.draw do
  devise_for :users
  root to: 'songs#index'
  resources :songs
  resources :steps do
    get 'download'
  end
end
