SaifasLeans::Application.routes.draw do
  
  root :to => 'leans#show'

  match 'leans/:id' => 'leans#show'
  
end
