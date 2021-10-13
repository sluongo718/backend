class WaitListsController < ApplicationController

    def index 
        waitlists = WaitList.all 
        render json: waitlists
    end

    def show 
        waitlist = WaitList.find(params[:id])
        
        render json: waitlist 
    end

    def create 
        waitlist = WaitList.new(waitList_params)
        if waitlist.save 
            render json: waitlist
        end
    end

    def destroy 
        waitlist = WaitList.find_by(id: params[:id])
        waitlist.delete
        render json: {waitlistId: waitlist.id}
    end

    private 

        def waitlist_params
            params.require(:wait_lists).permit(:name)
        end

end
