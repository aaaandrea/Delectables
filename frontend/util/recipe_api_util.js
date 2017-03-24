export const createComment = comment => (
  $.ajax({
    method: 'POST',
    url: '/api/comments',
    data: comment
  })
);

export const deleteComment = id => (
  $.ajax({
    method: 'DELETE',
    url: `/api/comments/${id}`
  })
);

export const fetchComments = (recipeId) => (
  $.ajax({
    method: 'GET',
    url: `/api/recipes/${recipeId}`
  })
);


export const createRecipe = (recipe) => (
  $.ajax({
    method: 'POST',
    url: '/api/recipes',
    contentType: 'application/json',
    data: JSON.stringify({ recipe })
  })
);

export const deleteRecipe = (id) => (
  $.ajax({
    method: 'DELETE',
    url: `/api/recipes/${id}`
  })
);

export const fetchRecipes = () => (
  $.ajax({
    method: 'GET',
    url: `/api/recipes`
  })
);

export const fetchRecipe = (id) => (
  $.ajax({
    method: 'GET',
    url: `/api/recipes/${id}`
  })
);

export const updateRecipe = (recipe) => (
  $.ajax({
    method: 'PATCH',
    url: `/api/recipes/${recipe.id}`,
    data: { recipe }
  })
);

export const searchRecipes = search => (
  $.ajax({
    method: 'GET',
    url: "/api/recipes",
    data: { search }
  })
);

export const fetchTags = () => (
  $.ajax({
    method: 'GET',
    url: '/api/tags'
  })
);
