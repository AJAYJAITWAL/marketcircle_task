require "test_helper"

class PersonTest < ActiveSupport::TestCase
  test "should not save person without name" do
    person = Person.new
    assert_not person.save, "Saved the person without a name"
  end

  test "should save person with associated detail" do
    person = Person.new(name: "John Doe")
    person.build_detail(title: "Mr.", age: 30, phone: "1234567890", email: "john@example.com")
    assert person.valid?
    assert person.save
  end
end
