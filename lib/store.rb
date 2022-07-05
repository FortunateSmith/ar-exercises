class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true
  validates :name, length: { minimum: 3, too_long: "%{count} characters is the minimum allowed" }

  validates :annual_revenue, numericality: { only_integer: true , :greater_than => 0}
  validate :stores_must_carry_mens_or_womens_clothing

  def stores_must_carry_mens_or_womens_clothing
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:mens_apparel, "or Womens apparel must be selected")
      errors.add(:womens_apparel, "or Mens apparel must be selected")
    end
  end

end
