Rails.application.routes.draw do

  get 'use_form/up'

  post 'use_form/down'

  root :to => 'root#root'

  get 'sample/up'

  get 'sample/down'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
