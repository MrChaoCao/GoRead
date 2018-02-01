export const fetchUser = (id) => (
  $.ajax({
    method: "GET",
    url: `api/users/${id}`
  })
)

export const createUser = user => (
  $.ajax({
    method: "POST",
    url: `api/users`
    data: { user }
  })
)

export const createSession = session => (
  $.ajax({
    method: "POST",
    url: `api/session`
  })
)

export const deleteSession = session => (
  $.ajax({
    method: "DELETE",
    url: `api/session`
  })
)
