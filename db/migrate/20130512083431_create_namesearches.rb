class CreateNamesearches < ActiveRecord::Migration
  def change
    create_table :namesearches do |t|
      t.string :name

      t.timestamps
    end
  end
end
