RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    #expectations.

# message creation empty text should fail | starter / degenerate case with bad inputs
#expectations.message_creation_empty_text_field = false
#obj.should be_true
#obj.should raise_exception(error)


# messages should be accessible / positive case | next test
#expectations.message_index_accessible = true
#obj.should exist


# message creation should be successful / positive case | story test
#expectations.message_creation_successful = true


require_relative '../messages'
require 'spec_helper'
 
describe "Messages" do
 
    before :all do
        messages = [
            Message.new(:name => 'Fred', :content => 'Do you need anything from the store', phone: => '888-9876'),
            Message.new(:name => 'Jeffrey', :content => 'Lunch is ready', phone: => '555-6789'),
            Message.new(:name => 'Steve', :content => 'There is a bird inside the house', phone: => '123-4567'),
            Message.new(:name => 'Laura', :content => 'The cat will get it', phone: => '555-5555'),
            Message.new(:name => 'Elsa', :content => 'Can the cat reach?', phone: => '987-6543')
        ]
    end
 
end

# describe message index accessible
describe "#creation" do
  it "allows access to message index" do
    @message.index is_accessible_to_user Message
  end


# describe messages  
describe "Message" do
  it "creates a new message" do
    @message.should be_an_instance_of Message 
  end

#describe empty message
describe "#creation" do
  it "doesn't allow empty message creation" do
    @message.should have_contents Message
  end

end