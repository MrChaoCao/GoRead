export const fetchUser = (id) => (
  $.ajax({
    method: "GET",
    url: `api/users/${id}`
  })
)

export const createUser = user => (
  $.ajax({
    method: "POST",
    url: `api/users`,
    data: { user },
  })
)
