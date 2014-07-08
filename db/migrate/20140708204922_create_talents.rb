class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.string :name
      t.integer :ameoba_id

      t.timestamps
    end
  end
end
