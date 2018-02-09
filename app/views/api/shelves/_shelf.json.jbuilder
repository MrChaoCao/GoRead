json.extract! shelf, :user_id, :name, :id

json.books shelf.books.pluck(:id)
