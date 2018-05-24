
class ProductHunt::Product

  attr_accessor :url, :name, :blurb, :description, :tags, :upvotes, :positive_review_count, :neutral_review_count, :negative_review_count
  @@all = []

  def initialize(name, blurb, url)
    @name = name
    @url = url
    @@all << self
  end

  def self.top_five
    puts "this is working"
  end
end
