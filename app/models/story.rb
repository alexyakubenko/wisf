class Story < ActiveRecord::Base
  validates_presence_of :content
  validates_length_of :content, :minimum => 10
  has_many :comments, :order => 'created_at ASC', :dependent => :delete_all
  validate :non_english?

  def non_english?
    self.content.downcase.scan(/[a-z]/).size < self.content.size
  end
end
