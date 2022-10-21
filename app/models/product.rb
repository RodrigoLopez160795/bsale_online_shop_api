class Product < ActiveRecord::Base
  establish_connection(:production)
  self.table_name = 'product'
end
