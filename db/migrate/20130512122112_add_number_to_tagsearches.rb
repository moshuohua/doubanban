class AddNumberToTagsearches < ActiveRecord::Migration
  def change
    add_column :tagsearches, :number, :integer
  end
end
