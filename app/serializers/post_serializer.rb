# serialization = turn the object into a string, into a JSON string
#  single quote the strings BECAUSE
#  JSON needs double quoted keys and string values 

class PostSerializer
  def self.serialize(post)
    serialized_post = '{'
 
    serialized_post += '"id": ' + post.id.to_s + ', '
    serialized_post += '"title": "' + post.title + '", '
    serialized_post += '"description": "' + post.description + '", '
 
    # the author association can also be represented in JSON
    serialized_post += '"author": {'
    serialized_post += '"name": "' + post.author.name + '"}'
 
    # and end with the close brace
    serialized_post += '}'
    end
  end 