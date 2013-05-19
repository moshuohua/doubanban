class AddNumberToNamesearches < ActiveRecord::Migration
  def change
    add_column :namesearches, :number, :integer
  end
end
