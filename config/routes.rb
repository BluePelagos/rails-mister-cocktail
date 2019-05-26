Rails.application.routes.draw do
    resources :cocktails, only: [:show, :new, :create ] do
      resources :doses, only: [ :new, :create ]
  end
    delete 'doses/:id', to: 'doses#destroy', as: 'dose'
    root to: 'cocktails#index'
    delete 'cocktails/:id', to: 'cocktails#destroy', as: 'cocktail_delete'
end
