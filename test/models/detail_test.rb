require "test_helper"

class DetailTest < ActiveSupport::TestCase
  test "should not save detail without required attributes" do
    detail = Detail.new
    assert_not detail.save, "Saved the detail without required attributes"
  end

  test "should save detail with valid attributes" do
    person = Person.create(name: "John Doe")
    detail = person.build_detail(title: "Mr.", age: 30, phone: "1234567890", email: "john@example.com")
    assert detail.valid?
    assert detail.save
  end

  test "should not save detail with invalid email format" do
    person = Person.create(name: "John Doe")
    detail = person.build_detail(title: "Mr.", age: 30, phone: "1234567890", email: "invalidemail")
    assert_not detail.valid?, "Saved the detail with invalid email format"
  end
end

