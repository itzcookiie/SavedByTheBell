Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :users, only: [:index, :show, :create, :destroy]
      post 'user-sounds', :to => 'users#addsounds'
      resources :sounds, only: [:index, :show, :create, :destroy]
    end
  end
end
