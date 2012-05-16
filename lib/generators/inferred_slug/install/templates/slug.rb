#
# This generator automatically adds slugs to all your models. If you want to use
# inferred slugs on individual models, delete this file and make your desired
# models include the 'Slug' module. This is:
#
#   class MyModel < ActiveRecord::Base
#     include Slug
#   end
#
class ActiveRecord::Base
  include InferredSlug::Slug
end