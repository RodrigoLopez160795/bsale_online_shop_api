class Category < ActiveRecord::Base
  establish_connection(:production)
  self.table_name = 'category'
end
