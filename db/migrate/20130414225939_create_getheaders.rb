class CreateGetheaders < ActiveRecord::Migration
  def change
    create_table :getheaders do |t|

      t.timestamps
    end
  end
end
