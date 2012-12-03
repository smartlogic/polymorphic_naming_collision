class Person < ActiveRecord::Base
  has_many :ships
  has_many :backpacks, :as => :person
end
