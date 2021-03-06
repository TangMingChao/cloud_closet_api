# == Schema Information
#
# Table name: garment_logs
#
#  id         :integer          not null, primary key
#  garment_id :integer
#  title      :string
#  comment    :string
#  old_status :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_garment_logs_on_garment_id  (garment_id)
#

require 'rails_helper'

RSpec.describe GarmentLog, type: :model do
  it { should belong_to(:garment) } 
end
