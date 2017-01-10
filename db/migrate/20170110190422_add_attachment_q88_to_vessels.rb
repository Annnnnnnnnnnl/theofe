class AddAttachmentQ88ToVessels < ActiveRecord::Migration
  def self.up
    change_table :vessels do |t|
      t.attachment :q88
    end
  end

  def self.down
    remove_attachment :vessels, :q88
  end
end
