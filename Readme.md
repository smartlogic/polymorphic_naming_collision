## Demonstrate the polymorphic naming collision

If the name of the polymorphic relationship for a belongs_to has the same name as one of the belonging classes and two instances of two different belong_to classes have the same ID, they ill report each others' instances.

For example:

`Ship` belongs to a person polymorphically.  If a `Person` and an `Alien` both have many ships, they can report both person and alien ships where the person and alien have the same idea.

The solution is to make sure that Rails knows that it is a polymorphic relationship from the has_many side by using the `:as` option.

`Backpack` belongs to a person polymorphically.  If `Person` and `Alien` specify that they have many backpacks `:as => :person` then everything works as expected.

For this example repository, run `rake` to see the failing and passing tests demonstrating the issue.

### Detailed How-To

1. bundle install
1. rake db:migrate
1. rake
