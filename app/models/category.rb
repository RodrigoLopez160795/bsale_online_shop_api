class Category < ActiveRecord::Base
  establish_connection(:development)
  self.table_name = 'category'
end
