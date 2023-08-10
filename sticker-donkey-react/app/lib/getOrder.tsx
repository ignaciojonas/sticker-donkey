const endpoint = "http://rails:3000/graphql";
const ORDER_QUERY = `
    query getOrder($id: ID!) {

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
      
      }
`;

export default async function getOrder(searchTerm : string) {
    const response = await fetch(endpoint, {
      method: 'POST',
      headers: {'Content-Type': 'application/json'},
      body: JSON.stringify({
        query: ORDER_QUERY,
        variables: {
          id: parseInt(searchTerm)
        }
      })
    })
    return response.json()
}
