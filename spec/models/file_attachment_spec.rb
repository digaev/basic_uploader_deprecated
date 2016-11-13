require 'rails_helper'

RSpec.describe FileAttachment, type: :model do
  describe 'Schema' do
    it { should have_db_column(:attachment).of_type(:string) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:attachment) }
  end
end
