Rails.application.routes.draw do
get("/square/new", {:controller => "application", :action => "square_calc"})
get("/square/result", {:controller => "application", :action => "square_result"})
get("/square_root/new", {:controller => "application", :action => "square_root_calc"})
get("/square_root/result", {:controller => "application", :action => "square_root_result"})
# get("", {:controller => "application", :action => ""})
end
