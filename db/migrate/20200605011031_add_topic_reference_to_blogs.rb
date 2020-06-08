class AddTopicReferenceToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_reference :blogs, :topic,  foreign_key: true
    # add_column :blogs, :topic_id, :integer
  end
end
