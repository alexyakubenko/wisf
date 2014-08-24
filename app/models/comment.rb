class Comment < ActiveRecord::Base
  validates_presence_of :body
  validate :non_english?

  belongs_to :story

  def non_english?
    self.body.downcase.scan(/[a-z]/).size < self.body.size
  end
end
