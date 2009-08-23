class Link < ActiveRecord::Base
  attr_accessible :url, :title
  validates_url_format_of :url, :allow_nil => false
end
