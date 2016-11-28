class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

#any model we define here will be inherited by every other file
