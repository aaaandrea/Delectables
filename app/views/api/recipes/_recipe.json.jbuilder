json.extract! recipe, :id, :name, :directions, :img, :tag_id

json.ingredients recipe.ingredients do |ingredient|
  json.id ingredient.id
  json.title ingredient.title
  json.quantity ingredient.quantity
  json.unit ingredient.unit
end

json.user do
  json.id recipe.user.id
  json.username recipe.user.username
end
