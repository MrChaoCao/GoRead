export const getShelf = shelfId => (
  $.ajax({
    method: 'GET',
    url: 'api/shelves/${shelfId}'
  })
);

export const getShelves = () => (
  $.ajax({
    method: 'GET',
    url: 'api/shelves/${shelfId}'
  })
);

export const createShelfMembership = (bookId, shelfId) = (
  $.ajax({
    method: 'POST',
    url: 'api/shelf_memberships'
    data: { shelf_membership: { shelf_id: shelfId, book_id: bookId } }
  })
);

export const destroyShelfMembership = (bookId, shelfId) = (
  $.ajax({
    method: 'DELETE',
    url: 'api/shelf_memberships',
    data: { shelf_membership: { shelf_id: shelfId, book_id: bookId } }
  })
);
