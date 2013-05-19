class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :one
      t.string :two
      t.string :three
      t.string :four
      t.string :five

      t.timestamps
    end
  end
end
