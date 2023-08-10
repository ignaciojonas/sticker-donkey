type Order  = {
        sticker: Sticker
        user: User
        quantity: integer
    }

type Sticker = {
    name: string
    imageUrl: string
}

type User = {
    fullName: string
}

type SearchResult = {
    data?: {
        order : Order
    } 
}