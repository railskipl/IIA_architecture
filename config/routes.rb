IIAArchitechture::Application.routes.draw do 
  
  devise_for :admins, :path_names => { :sign_in =>"login", :sign_out =>"logout"}
  
   resources :committees  
   resources :members  
   resources :awards
   resources :publications
   resources :news
   resources :libraries
  
   namespace :admin do 
     match '/dashboard' => "dashboard#index", :as => :root
    
     match '/committees/:id/delete'  => 'committees#destroy'
     resources :committees
     
     match '/members/:id/delete'  => 'members#destroy'
     resources :members 
     
     match '/awards/:id/delete'  => 'awards#destroy'
     match '/awards/:id/show' => 'awards#show'
     resources :awards 
      match '/albums/:id/delete' => "albums#destroy"   
     resources :albums
     match '/publications/:id/delete' => "publications#destroy"
     resources :publications
     
     match '/news/:id/delete' => "news#destroy"
     resources :news
     
     match '/lectures/:id/delete' => "lectures#destroy"
     resources :lectures
     
     match '/libraries/:id/delete' => "libraries#destroy"
     resources :libraries
    
   
   end
  match '/home' => 'home#index'
  match '/committees' => 'committees#index'
  match '/committees/:id' => 'committees#show'
  match '/awards/:id' => 'awards#show'
  match '/news/:id' => 'news#show'
  
 
  
  

  root :to => "front#index"
    
end
