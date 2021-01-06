require 'rails_helper'

RSpec.describe Title, type: :model do
  let(:title) { create :title }

  describe '#directors' do
    subject { title.directors }
    it { is_expected.to match_array([]) }
  end

  describe '#participants' do
    subject { title.participants }
    it { is_expected.to match_array([]) }
  end
end
