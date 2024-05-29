class CreateCalculators < ActiveRecord::Migration[6.0]
  def change
    create_table :calculators do |t|
      t.string :use
      t.string :input
      t.integer :result

      t.timestamps
    end
  end
end
