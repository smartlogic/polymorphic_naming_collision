class Ship < ActiveRecord::Base
  attr_accessible :person
  belongs_to :person, :polymorphic => true
end
