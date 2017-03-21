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


export const fetchTagRecipes = (tag_id) => (
  $.ajax({
    method: 'GET',
    url: "/api/recipes",
    data: { tag_id }
  })
);


export const searchRecipes = search => (
  $.ajax({
    method: 'GET',
    url: "/api/recipes",
    data: { search }
  })
);
