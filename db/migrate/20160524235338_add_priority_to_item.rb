class AddPriorityToItem < ActiveRecord::Migration
  def change
    add_column :items, :priority, :integer
  end
end
