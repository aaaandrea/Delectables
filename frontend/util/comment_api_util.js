export const createComment = (comment) => (
  $.ajax({
    method: 'POST',
    url: '/api/comments',
    data: { comment }
  })
);

export const fetchComments = (recipeId) => (
  $.ajax({
    method: 'GET',
    url: '/api/comments',
    data: { recipeId }
  })
);

export const deleteComment = (id) => (
  $.ajax({
    method: 'DELETE',
    url: `api/comments/${id}`
  })
);
