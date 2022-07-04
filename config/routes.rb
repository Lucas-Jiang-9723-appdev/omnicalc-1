Rails.application.routes.draw do
get("/square/new", {:controller => "application", :action => "square_calc"})
get("/square/result", {:controller => "application", :action => "square_result"})
# get("", {:controller => "", :action => ""})
end
