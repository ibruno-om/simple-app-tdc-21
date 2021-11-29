module Mutations
  class CreateBook < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    # arguments passed to the `resolve` method
    argument :title, String, required: true
    argument :description, String, required: true
    argument :author_id, Integer, required: true

    # TODO: define arguments
    # argument :name, String, required: true
    type Types::BookType

    def resolve(title: nil, description: nil, author_id: nil)
      Book.create!(title: title, description: description, author_id: author_id)
    end
  end
end
