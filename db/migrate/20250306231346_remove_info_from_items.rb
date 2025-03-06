class RemoveInfoFromItems < ActiveRecord::Migration[7.1]
  def change
    remove_column :items, :info, :cube
  end
end
