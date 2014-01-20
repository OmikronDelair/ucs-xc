UcsXc::Application.routes.draw do
  root to: 'songs#index'
  resources :songs
  resources :steps do
    get 'download'
  end
end
