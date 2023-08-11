require "test_helper"

class GraphOrderTest  < ActionDispatch::IntegrationTest
  
  setup do
    @query = "query getOrder($id: ID!) {

    order(id: $id) {
    
    sticker {
      name
      imageUrl
    }
    user {
      fullName
    }
    quantity
    }
    
    }"
  end

  test "it retrives an order when exist" do
    order = orders(:order1)
   
    body = { query: @query, variables: {id: order.id} }

    post '/graphql', params: body

    parsed_response= JSON.parse(response.body)
    assert_equal parsed_response.dig('data','order','quantity'), order.quantity
    assert_equal parsed_response.dig('data','order','user', 'fullName'), "#{order.user.first_name} #{order.user.last_name}"
    assert_equal parsed_response.dig('data','order','sticker', 'name'), order.sticker.name
  end

  test "it fail if the order doesn't exist" do
    body = { query: @query, variables: {id: 11} }
    assert_raises { post '/graphql', params: body }
  end
end
