# == Schema Information
#
# Table name: images
#
#  id                 :integer          not null, primary key
#  title              :string
#  photo_type         :string
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  imageable_type     :string
#  imageable_id       :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_images_on_imageable_type_and_imageable_id  (imageable_type,imageable_id)
#

require 'rails_helper'

RSpec.describe Image, type: :model do
  it { should belong_to(:imageable) } 
end
