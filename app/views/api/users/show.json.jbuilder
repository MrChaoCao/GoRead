json.user do
  json.partial! 'api/users/user', user: @user
end

json.shelves do
  @user.shelves.each do |shelf|
    json.set! shelf.id do
      json.partial! 'api/shelves/shelf', shelf: shelf
    end
  end
end
