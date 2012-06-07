class Document < ActiveRecord::Base
  attr_accessible :name, :project_id, :url, :data

  belongs_to :project
  has_attached_file :data
end
