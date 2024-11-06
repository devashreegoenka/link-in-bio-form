class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def form 
    render({ :template => "item_templates/form"})
  end 


  def create_row 
    # Get the user's input out of params
    # Create and save a new row in items table 
    # send user to / page

    i = Item.new
    i.link_url = params.fetch("link_URL")
    i.link_description = params.fetch("link_description")
    i.thumbnail_url = params.fetch("thumbnail_URL")
    i.save

    redirect_to("/", allow_other_host: true)
  end 

end
