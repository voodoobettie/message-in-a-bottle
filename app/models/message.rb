class Message < ActiveRecord::Base

# GET /messages/new
  def new
    @message = new
    validates_presence_of :message
  end
end
