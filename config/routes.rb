Rails.application.routes.draw do
  root 'lists#index'
  resources :bookmarks, only: :destroy

  resources :lists do
    resources :bookmarks, except: :destroy
  end
end
