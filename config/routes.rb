Rails.application.routes.draw do
  get 'home/index'
  get 'home/test'       # Used to test stack install
  get 'home/uitest'     # Used to test stack install
  root 'home#index'
end
