class AddSidToSoundc < ActiveRecord::Migration
  def change
    add_column :soundcs, :sid, :int
  end
end
