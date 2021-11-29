module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"

    field :books, [Types::BookType], null: false,
      description: "Books from library"

    field :authors, [Types::AuthorType], null: false,
      description: "Books from library"

    def books
      Book.includes(:author).all
    end

    def authors
      Author.all
    end

    def test_field
      "Hello World!"
    end
  end
end
