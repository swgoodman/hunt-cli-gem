
class ProductHunt::Product

  attr_accessor :url, :name, :blurb, :description, :tags, :upvotes, :positive_review_count, :neutral_review_count, :negative_review_count
  @@all = []

  # def initialize
  #   @name = name
  #   @url = url
  #   @@all << self
  # end

  def self.top_five

    product_1 = self.new
    product_1.name = "testing"
    product_1.blurb = "wow"

    product_2 = self.new
    product_2.name = "testing"
    product_2.blurb = "wow"

    [product_1, product_2]
  end
  # binding.pry
end
