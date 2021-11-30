## GraphQL Sample on Rails

#### ⭐ Star us on GitHub — it motivates a lot!

### Requirements:  

Clone down this repository. You will need `ruby` 2.7.2 installed globally on your machine, `SQLite3` database

🚀 Running:
    `bin/bundle install`
    `bin/rails db:create db:migrate db:seed`
    `bin/rails s -p 3000`

### Books

- get all books POST 'http://localhost:3000/graphql'
  - payload `{
  books {
    id
    title
    description
    author {
      id
      fullName
    }
  }
}`

- create a book POST 'http://localhost:3000/graphql'
  - payload: `mutation {
  createBook(input: {title: "New Book", description: "New Description", authorId: 1}){
    id
    title
    description
  }
}`

### Authors

- get all authors POST 'http://localhost:3000/graphql'
  - payload: `{
  authors {
    id
    firstName
    lastName
    fullName
  }
}`
