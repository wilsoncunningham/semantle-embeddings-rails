class AddEmbeddingToItems < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :embedding, :cube
  end
end
