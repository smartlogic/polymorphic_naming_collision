require 'spec_helper'

describe "polymorphic naming conflicts" do
  it "should return the right ships even if the id's collide" do
    person = Person.create!
    alien = Alien.create!
    assert person.id == alien.id, "Person and Alien must have the same ID for this test"

    person_ship1 = Ship.create :person => person
    person_ship2 = Ship.create :person => person

    alien_ship1 = Ship.create :person => alien
    alien_ship2 = Ship.create :person => alien

    person.ships.should =~ [person_ship1, person_ship2]
    alien.ships.should =~ [alien_ship1, alien_ship2]
  end

  it "should return the right backpacks even if the id's collide" do
    person = Person.create!
    alien = Alien.create!
    assert person.id == alien.id, "Person and Alien must have the same ID for this test"

    person_backpack1 = Backpack.create :person => person
    person_backpack2 = Backpack.create :person => person

    alien_backpack1 = Backpack.create :person => alien
    alien_backpack2 = Backpack.create :person => alien

    person.backpacks.should =~ [person_backpack1, person_backpack2]
    alien.backpacks.should =~ [alien_backpack1, alien_backpack2]
  end
end
