class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.integer :rate

      t.timestamps
    end
  end
end
