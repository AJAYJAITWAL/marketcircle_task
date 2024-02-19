require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should create person with detail" do
    assert_difference('Person.count') do
      post people_url, params: {
        person: {
          name: "John Doe",
          detail_attributes: {
            title: "Mr.",
            age: 30,
            phone: "1234567890",
            email: "john@example.com"
          }
        }
      }
    end

    assert_response :created
  end

  test "should not create person without name" do
    assert_no_difference('Person.count') do
      post people_url, params: {
        person: {
          detail_attributes: {
            title: "Mr.",
            age: 30,
            phone: "1234567890",
            email: "john@example.com"
          }
        }
      }
    end

    assert_response :unprocessable_entity
  end
end
