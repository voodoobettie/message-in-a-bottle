class AddPhoneToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :phone, :string, :default => '', :null => false
  end
end
	