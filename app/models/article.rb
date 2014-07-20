class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :author, type: String, default: ''
  field :index, type: Integer, default: 1

  field :html_content, type: String, default: ''

  belongs_to :column


  validates :title, presence: true

end