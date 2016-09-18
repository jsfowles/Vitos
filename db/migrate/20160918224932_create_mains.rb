class CreateMains < ActiveRecord::Migration[5.0]
  def change
    create_table :mains do |t|
      t.string :time
      t.string :update
      t.string :string

      t.timestamps
    end
  end
end
