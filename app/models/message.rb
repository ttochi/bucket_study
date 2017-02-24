class Message < ActiveRecord::Base
    belongs_to :user
    belongs_to :chat_room


    def created_stamp
        created_at.strftime('%H:%M:%S %d %B %Y')
    end
end
