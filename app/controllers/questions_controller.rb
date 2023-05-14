class QuestionsController < ApplicationController

    def index 
        render :json => Question.all
    end

    def create
        question = Question.new(params.require(:question).permit(:question, :question_type).merge!(status: 'active'))

        if question.save
            render :json => { id: question.id }
        else 
            render :json => { error: 'failed to save!!!' }
        end
    end

    # def index 
    #     render :json => Question.where(id: params[:id]).take
    # end
end
