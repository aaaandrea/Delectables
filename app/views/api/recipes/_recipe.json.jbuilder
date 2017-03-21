json.extract! recipe, :id, :name, :directions, :img, :tag_id, :user_id

json.ingredients recipe.ingredients do |ingredient|
  json.id ingredient.id
  json.title ingredient.title
  json.quantity ingredient.quantity
  json.unit ingredient.unit
end
