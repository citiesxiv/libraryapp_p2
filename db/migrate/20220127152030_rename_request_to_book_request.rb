class RenameRequestToBookRequest < ActiveRecord::Migration[5.2]
  def change
    def self.up
      rename_table :requests, :bookrequests
    end
  
    def self.down
      rename_table :bookrequests, :requests
    end
  
  end
end
