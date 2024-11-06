Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "items", :action => "form" })

  post("/insert_item", { :controller => "items", :action => "create_row" })
end
