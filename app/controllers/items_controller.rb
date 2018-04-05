class ItemsController < ApplicationController
    
    def index
        @items = Item.all
    end

    def new
        @items = Item.new
    end

    def create
        @items = Items.new(params.include(:label, :description, :item_type, :price))

        if @items.save
            redirect_to show_items_path(@items)
        else
            #respond with 500 server
        end
    end

end