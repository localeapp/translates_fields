ActiveRecord::Base.connection.execute("DROP TABLE IF EXISTS 'my_models'")
ActiveRecord::Base.connection.create_table(:my_models) do |t|
  t.text :body
end

class MyModel < ActiveRecord::Base
  translates :body
end