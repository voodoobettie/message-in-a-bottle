require 'test_helper'

class MessagesTest < ActiveSupport::TestCase
# message creation empty text should fail | starter / degenerate case with bad inputs
  def test_create_invalid
  	Message.any_instance.stubs(:valid?).returns(false)
    post :create 
    assert_template 'new'
  end

# message creation should be successful / positive case	
# messages should be accessible / positive case | next test
	def test_should_be_valid
		assert Message.new.valid?
	end
  # test "the truth" do
  #   assert true
  # end
  
  def test_create_valid
  	post :create
  	assert_redirected_to messages_url
  end

  def test_index
  	get :test_index
  	assert_template 'index'
  end
end
