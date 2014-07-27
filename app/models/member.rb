class Member
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :title, type: String, default: ''
  field :position, type: String, default: ''
  field :index, type: Integer, default: 1
  field :level, type: Integer, default: 1

  field :html_content, type: String, default: ''

	mount_uploader :avatar, AvatarUploader

  validates :name, presence: true

end