class CreateAliens < ActiveRecord::Migration
  def change
    create_table :aliens do |t|
      t.timestamps
    end
  end
end
