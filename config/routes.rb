Rails.application.routes.draw do

  root to: 'home#index'

  get '/calculate' => 'home#calculate'

end
