class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :gender
      t.integer :mother_id
      t.integer :father_id

      t.timestamps
    end
  end
end
