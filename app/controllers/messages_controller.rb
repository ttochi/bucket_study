class MessagesController < ApplicationController
    def create
        @message = Message.new(message_params)

        respond_to do |format|
            if @message.save
                format.js
            else
                format.js { render nothing: true }
            end
        end
    end

    private

    def message_params
        params.require(:message).permit(Message.attribute_names)
    end
end
