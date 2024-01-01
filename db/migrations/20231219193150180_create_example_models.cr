class CreateExampleModels < Jennifer::Migration::Base
  def up
    create_table :example_models do |t|
      t.string :name, {:null => false}

      t.timestamps
    end
  end

  def down
    drop_table :example_models if table_exists? :example_models
  end
end
