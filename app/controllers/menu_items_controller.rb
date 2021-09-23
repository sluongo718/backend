class MenuItemsController < ApplicationController

    def index 
        menuItems = MenuItem.all 
        render json: menuItems
    end

    def show 
        menuItem = MenuItem.find(params[:id])
        render json: menuItem
    end

    def create 
        menuItem = MenuItem.new(menuItem_params)
        if menuItem.save 
            render json: menuItem
        end
    end

    private 

        def menuItem_params
            params.require(:menuItem).permit(:name, :body)
        end

end