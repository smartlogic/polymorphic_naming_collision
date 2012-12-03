class CreateBackpacks < ActiveRecord::Migration
  def change
    create_table :backpacks do |t|
      t.references :person, :polymorphic => true
      t.timestamps
    end
  end
end
