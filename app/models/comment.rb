class Comment < ActiveRecord::Base
  validates_presence_of :body
  validate :non_english?

  belongs_to :story

  def non_english?
    self.body.downcase.squish.scan(/[a-z]/).size < self.body.squish.size.to_f / 2
  end
end
