class CreateTagsearches < ActiveRecord::Migration
  def change
    create_table :tagsearches do |t|
      t.string :tag

      t.timestamps
    end
  end
end
