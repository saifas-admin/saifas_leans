SaifasLeans::Application.routes.draw do

  root :to => 'leans#show', :id => 1

  match 'leans/:id' => 'leans#show'
  match 'leans'     => 'leans#show'
  
end
