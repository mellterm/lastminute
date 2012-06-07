class Document < ActiveRecord::Base
  attr_accessible :name, :project_id, :url

  belongs_to :project

end
