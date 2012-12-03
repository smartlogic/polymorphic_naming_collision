class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.references :person, :polymorphic => true
      t.timestamps
    end
  end
end
