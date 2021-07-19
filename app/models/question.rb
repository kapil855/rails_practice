class Question < ApplicationRecord
  has_rich_text :title
  has_rich_text :description

  scope :tomorrow_questions, -> { where('created_at BETWEEN ? AND ?', tomorrow_start, tomorrow_end) }

  def self.tomorrow_start
  	Date.tomorrow.beginning_of_day
  end

  def self.tomorrow_end
  	Date.tomorrow.end_of_day
  end

  # def self.tomorrow_questions
  # 	where('created_at BETWEEN ? AND ?', Date.tomorrow.beginning_of_day, Date.tomorrow.end_of_day)
  # end

end
