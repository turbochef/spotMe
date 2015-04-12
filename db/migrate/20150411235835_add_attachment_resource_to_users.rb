class AddAttachmentResourceToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :resource
    end
  end

  def self.down
    remove_attachment :users, :resource
  end
end
