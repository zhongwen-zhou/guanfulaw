class Column
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :level, type: Integer, default: 1
  field :index, type: Integer, default: 1

  field :html_content, type: String, default: ''

  has_many :columns
  belongs_to :column


  validates :name, presence: true, uniqueness: true

  scope :top, ->{where(:level => 1)}

end