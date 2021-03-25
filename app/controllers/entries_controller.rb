class EntriesController < ApplicationController
    def index
        @entries = Entry.all().order(:date)
    end

    def new
        @entry = Entry.new
    end

    def create
        @entry = Entry.new(post_params)
        puts post_params
        if @entry.save
            redirect_to @entry
        else
            render :new
        end
    end


    def show
        @entry = Entry.find(params[:id])
    end

    private
    def post_params
        params.require(:entry).permit(:id, :project_id, :date, :hours, :billable, :first_name, :last_name, :billable_rate)
    end
end
