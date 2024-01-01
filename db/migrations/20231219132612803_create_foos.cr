class CreateFoos < Jennifer::Migration::Base
  def up
    create_table :foos do |t|
      t.string :name, {:null => false}

      t.timestamps
    end
  end

  def down
    drop_table :foos if table_exists? :foos
  end
end
