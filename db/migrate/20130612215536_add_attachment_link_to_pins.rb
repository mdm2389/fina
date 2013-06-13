class AddAttachmentLinkToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :link
    end
  end

  def self.down
    drop_attached_file :pins, :link
  end
end
