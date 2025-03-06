class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.cube :info

      t.timestamps
    end
  end
end
