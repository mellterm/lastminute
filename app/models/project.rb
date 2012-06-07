class Project < ActiveRecord::Base
  attr_accessible :name, :documents_attributes

  has_many :documents, :dependent => :destroy
  belongs_to :user

  #does not display blank documents
  accepts_nested_attributes_for :documents, :reject_if => lambda { |a| a[:name].blank? }, :limit => 3, :allow_destroy => true
  
end
