IIAArchitechture::Application.routes.draw do 
  
  
  get "lalbums/controller"

  devise_for :admins, :path_names => { :sign_in =>"login", :sign_out =>"logout"}
  
   resources :committees  
   resources :members  
   resources :awards
   resources :publications
   resources :news
   resources :libraries
   resources :lectures
   resources :lalbums
   resources :architects
   resources :students
   resources :memberships
   resources :pictures
   resources :books
   match '/contacts' => "contacts#contact"
   
  
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
     
     match '/lalbums/:id/delete' => "lalbums#destroy"
     resources :lalbums
     
     match '/architects/:id/delete' => 'architects#destroy'
     match '/architects/:id/show' => 'architects#show'
     resources :architects 
     
     match '/galleries/:id/delete' => "galleries#destroy"   
     resources :galleries
     
     match '/memberships/:id/delete' => 'memberships#destroy'
     match '/memberships/:id/show' => 'memberships#show'
     resources :memberships 
    
     match '/students/:id/delete' => "students#destroy"   
     resources :students
     
     match '/winners/:id/delete' => "winners#destroy"   
     resources :winners
     
     match '/pictures/:id/delete'  => 'pictures#destroy'
     match '/pictures/:id/show' => 'pictures#show'
     resources :pictures
      
     match '/palbums/:id/delete' => "palbums#destroy"   
     resources :palbums
     
     match '/books/:id/delete'  => 'books#destroy'
     match '/books/:id/show' => 'books#show'
     resources :books
      
     match '/yralbums/:id/delete' => "yralbums#destroy"   
     resources :yralbums
     
     
   
   end
  match '/home' => 'home#index'
  match '/committees' => 'committees#index'
  match '/committees/:id' => 'committees#show'
  match '/awards/:id' => 'awards#show'
  match '/news/:id' => 'news#show'
  match '/lectures/:id' => 'lectures#show'
 
  
  

  root :to => "front#index"
    
end
