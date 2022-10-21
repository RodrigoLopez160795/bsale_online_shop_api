class Product < ActiveRecord::Base
  establish_connection(:development)
  self.table_name = 'product'
end
