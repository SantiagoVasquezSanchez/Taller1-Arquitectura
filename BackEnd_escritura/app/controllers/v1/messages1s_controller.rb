class V1::Messages1sController < ApplicationController
    def index
        @messages1s = Messages1.all

        render json: @messages1s, status: :ok
    end
    def create
        @message1 = Messages1.new(messages1_params)

        @message1.save
        render json: @message1, status: :created
    end
    def destroy
        @message1 = Messages1.where(id: params[:id]).first
        if @message1.destroy
            head(:ok)
        else
            head(:no_se_destruyo)
        end
    end
    def messages1_params
        params.require(:messages1).permit(:nombre, :mensaje)

    end
end
