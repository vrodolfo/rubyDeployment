Rails.application.routes.draw do

  get    ''                    => 'sessions#new'    , as:'root'
  get    'sessions/new'        => 'sessions#new'    , as:'sessionsNew'
  post   'sessions'            => 'sessions#create' , as:'sessionsCreate'
  delete 'sessions'            => 'sessions#destroy', as:'sessionsDestroy'

  get    'users/new'           => 'users#new'       , as:'usersNew'
  post   'users'               => 'users#create'    , as:'usersCreate'
  get    'users/:user_id'      => 'users#show'      , as:'usersShow'
  patch  'users/:user_id'      => 'users#update'    , as:'usersUpdate'
  delete 'users/:user_id'      => 'users#destroy'   , as:'usersDestroy'
  get    'users/:user_id/edit' => 'users#edit'      , as:'usersEdit'
  
  get    'main/:user_id'       => 'users#index'     , as:'main'


end
