export const createSession = session => (
  $.ajax({
    method: "POST",
    url: `api/session`,
  })
)

export const deleteSession = session => (
  $.ajax({
    method: "DELETE",
    url: `api/session`,
  })
)
