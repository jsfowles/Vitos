class CreateVitos < ActiveRecord::Migration[5.0]
  def change
    create_table :vitos do |t|
      t.string :open
      t.string :close
      t.text :updates

      t.timestamps
    end
  end
end
