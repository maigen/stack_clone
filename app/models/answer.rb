class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_many :votes
  validates :content, presence: true

  def vote_count
    total = 0
    votes = Vote.where(:answer_id => self.id)
    votes.each do |vote|
      total += vote.value
    end
    total
  end
end
