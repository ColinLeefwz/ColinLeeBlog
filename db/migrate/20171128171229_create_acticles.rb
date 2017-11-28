class CreateActicles < ActiveRecord::Migration[5.0]
  def change
    create_table :acticles do |t|

      t.timestamps
    end
  end
end
