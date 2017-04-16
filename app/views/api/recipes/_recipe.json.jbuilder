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

json.comments recipe.comments.order(created_at: :desc) do |comment|
  json.id comment.id
  json.body comment.body
  json.user_id comment.user_id
  json.username comment.user.username
end

json.tag do
  json.id recipe.tag.id
  json.name recipe.tag.name
end
