class ResponsesController < ApplicationController

    def index 
        render :json => Response.all
    end

    def create
        response = Response.new(params.require(:response).permit(:question_id, :option_id))

        if response.save
            render :json => { id: response.id }
        else 
            render :json => { error: 'failed to save!!!' }
        end
    end
end
