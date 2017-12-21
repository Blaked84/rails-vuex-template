class CreateFoos < ActiveRecord::Migration[5.1]
  def change
    create_table :foos do |t|
      t.string :bar1
      t.boolean :bar2

      t.timestamps
    end
  end
end
