class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name, :default => '', :null => false 
      t.string :content, :default => '', :null => false
      t.timestamps null: false
    end
  end
end
