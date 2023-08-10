module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :stickers, [Types::StickerType], null: false
    def stickers
      Sticker.all
    end

    field :sticker, Types::StickerType, null: false do
      argument :id, ID, required: true
    end
    def sticker(id:)
      Sticker.find(id)
    end

    field :orders, [Types::OrderType], null: false
    def orders
      Order.all
    end

    field :order, Types::OrderType, null: false do
      argument :id, ID, required: true
    end
    def order(id:)
      Order.find(id)
    end
    
  end
end
