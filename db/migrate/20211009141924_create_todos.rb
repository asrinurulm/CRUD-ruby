class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string:task
      t.date:deadline
      t.boolean:status

      t.timestamps
      # Berdasarkan migrations diatas, kita akan membuat table dengan nama todos, 
      # lalu membuat column task yang bertipe data string, deadline bertipe data date, 
      # dan status bertipe data boolean.
    end
  end
end
