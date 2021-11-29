# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
                               description: 'An example field added by the generator'

    field :books, [Types::BookType], null: false,
                                     description: 'Books from library' do
      argument :page, Integer, required: false
      argument :limit, Integer, required: false
    end

    field :authors, [Types::AuthorType], null: false,
                                         description: 'Authors from library' do
      argument :page, Integer, required: false
      argument :limit, Integer, required: false
    end

    def books(page: nil, limit: nil)
      Book.includes(:author).all.page(page).per(limit)
    end

    def authors(page: nil, limit: nil)
      Author.all.page(page).per(limit)
    end

    def test_field
      'Hello World!'
    end
  end
end
