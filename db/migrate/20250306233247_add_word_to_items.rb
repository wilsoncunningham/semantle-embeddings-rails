class AddWordToItems < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :word, :string
  end
end
