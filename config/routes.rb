Sismug::Application.routes.draw do
  resources :gestors
	resources :personas
	resources :sesiones, only: [:new, :create, :destroy]
  root  'sesiones#new'
  match '/addpersona',	to: 'personas#new',							 	via: 'get'
  match '/signup',      to: 'gestors#new',                via: 'get'
  #match '/signin',  		to: 'sesiones#new',         			via: 'get'
  match '/signout', 		to: 'sesiones#destroy',     			via: 'delete'
  match '/ayuda',    		to: 'paginas_estaticas#ayuda',    via: 'get'
  match '/acerca',   		to: 'paginas_estaticas#acerca',   via: 'get'
  match '/contacto', 		to: 'paginas_estaticas#contacto', via: 'get'
end
