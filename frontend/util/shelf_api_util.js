export const fetchShelf = shelfId => (
  $.ajax({
    method: 'GET',
    url: `api/shelves/${shelfId}`
  })
)
// {name: title}
export const createShelf = shelfName => (
  $.ajax({
    method: 'POST',
    url: `api/shelves`,
    data: { name: shelfName }
  })
)

export const createShelfMembership = (bookId, shelfId) => (
  $.ajax({
    method: 'POST',
    url: `api/shelves/${shelfId}/books/${bookId}/shelf_membership`,
  })
);

export const destroyShelfMembership = (bookId, shelfId) => (
  $.ajax({
    method: `DELETE`,
    url: `api/shelves/${shelfId}/books/${bookId}/shelf_membership`,
  })
);