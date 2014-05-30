Sismug::Application.routes.draw do
	resources :personas
  root  'paginas_estaticas#inicio'
  match '/addpersona',	to: 'personas#new',							 	via: 'get'
  match '/ayuda',    		to: 'paginas_estaticas#ayuda',    via: 'get'
  match '/acerca',   		to: 'paginas_estaticas#acerca',   via: 'get'
  match '/contacto', 		to: 'paginas_estaticas#contacto', via: 'get'
end
