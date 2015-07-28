RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    #expectations.

# messages should be accessible
#expectations.message_index_accessible = true
#obj.should exist


# message creation should be successful
#expectations.message_creation_successful = true


# message creation empty text should fail
#expectations.message_creation_empty_text_field = false
#obj.should be_true
#obj.should raise_exception(error)



require_relative '../messages'
require 'spec_helper'
 
describe "Messages" do
 
    before :all do
        messages = [
            Message.new("Fred", "Do you need anything from the store", "888-9876"),
            Message.new("Jeffrey", "Lunch is ready", "555-6789"),
            Message.new("Steve", "There is a bird inside the house", "123-4567"),
            Message.new("Laura", "The cat will get it", "555-5555"),
            Message.new("Elsa", "He's too short to reach", "987-6543")
        ]
    end
 
end

class Message
    attr_accessor :name, :content, :phone
        def initialize name, content, phone
            @name = name
            @content = content
            @phone = phone
        end
end


# describe message index accessible
describe "#creation" do
  it "allows access to message index" do
    @message.index is_accessible_to_user Message
  end


# describe messages  
describe "#new" do
  it "creates a new message" do
    @message.should be_an_instance_of Message 
  end

#describe empty message
describe "#creation" do
  it "doesn't allow empty message creation" do
    @message.should have_contents Message
  end

end