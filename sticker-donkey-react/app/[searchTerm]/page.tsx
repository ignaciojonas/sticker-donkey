import getOrder from "../lib/getOrder"

type Props = {
    params: {
        searchTerm: string
    }
}

export default async function SearchResults({ params: { searchTerm } }: Props) {
    const stickerOrder: Promise<SearchResult> = getOrder(searchTerm)
    const data = await stickerOrder
    const order : Order | undefined = data?.data?.order
    if (order)
        return (
            <main className="mt-10 mx-auto max-w-lg py-1 min-h-screen text-2xl">
                The user {order.user.fullName} created an order for {order.quantity} {order.sticker.name} stickers
                <img src={order.sticker.imageUrl}/>
            </main>
        )
    else
        return (
            <main className="mt-10 mx-auto max-w-lg py-1 min-h-screen text-2xl">
                    Order not found
            </main>
        )
}