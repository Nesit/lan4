Lan4::Application.routes.draw do

  mount_roboto

  root :to => "pages#show", :slug => 'index', locale:'en'
  
  post "sms", to: "messages#create"
  match 'send_sms', to: 'pages#send_sms'

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :feedbacks, :only => :create

  localized do
    root :to => "pages#show", :slug => 'index'
    get ':slug' => 'pages#show', :as => :slug
    resources :pages
  end
end
