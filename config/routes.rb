ActionController::Routing::Routes.draw do |map|
  map.home "/home", :controller => 'misc', :action => 'home'
  map.resources :dums do |dum|
    dum.resources :photos
  end
end
