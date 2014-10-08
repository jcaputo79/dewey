class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :name
      t.string :purpose
      t.string :definition

      t.timestamps
    end
  end
end
