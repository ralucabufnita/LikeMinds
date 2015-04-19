# json.ideas2 (0..@ideasCollection.count).step(2) do |i|
#   json.id @ideasCollection[i].id
#   json.title @ideas[i].title
#   json.category @ideas[i].category
#   json.content @ideas[i].content
# end

json.ideas @ideas