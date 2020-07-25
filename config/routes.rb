Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'
  get 'home/back'

  get 'home/case1'
  get 'home/case2'
  get 'home/case3'
  get 'home/case4'
  get 'home/case5'
  get 'home/case5_create'
  get 'home/case6'
  get 'home/case6_create'

  get 'home/case7'

  namespace :api do
    namespace :v1 do
      get 'ajax/case6'
      get 'ajax/case7'
    end
  end
end
