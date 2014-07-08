class CreateAmeobas < ActiveRecord::Migration
  def change
    create_table :ameobas do |t|
      t.string :name
      t.integer :generating_number
      t.integer :act_id

      t.timestamps
    end
  end
end
