require 'rails_helper'

RSpec.describe Title, type: :model do
  let(:title) { create :title }

  describe '#participants' do
    subject { title.participants }

    context 'with no participants' do
      it { is_expected.to match_array([]) }
    end

    context 'when one participants' do
      let!(:participant) { create :participant }
      let!(:appearance) { create :appearance, title: title, participant: participant }

      it { is_expected.to match_array([participant]) }
    end

    context 'with one director and one actor' do
      let!(:director) { create :participant }
      let!(:appearance_1) { create :appearance, title: title, participant: director, role: :director }

      let!(:actor) { create :participant }
      let!(:appearance_2) { create :appearance, title: title, participant: actor, role: :actor }

      it { is_expected.to match_array([director, actor]) }
    end
  end

  describe '#directors' do
    subject { title.directors }

    context 'with no directors' do
      it { is_expected.to match_array([]) }
    end

    context 'with one director' do
      let!(:director) { create :participant }
      let!(:appearance) { create :appearance, title: title, participant: director, role: :director }

      it { is_expected.to match_array([director]) }
    end

    context 'with one director and one actor' do
      let!(:director) { create :participant }
      let!(:appearance_1) { create :appearance, title: title, participant: director, role: :director }

      let!(:actor) { create :participant }
      let!(:appearance_2) { create :appearance, title: title, participant: actor, role: :actor }

      it { is_expected.to match_array([director]) }
    end

    context 'with many directors' do
      let!(:director_1) { create :participant }
      let!(:appearance_1) { create :appearance, title: title, participant: director_1, role: :director }

      let!(:director_2) { create :participant }
      let!(:appearance_2) { create :appearance, title: title, participant: director_2, role: :director }

      it { is_expected.to match_array([director_1, director_2]) }
    end
  end

  describe '#actors' do
    subject { title.actors }

    context 'with no directors' do
      it { is_expected.to match_array([]) }
    end

    context 'with one director' do
      let!(:actor) { create :participant }
      let!(:appearance) { create :appearance, title: title, participant: actor, role: :actor }

      it { is_expected.to match_array([actor]) }
    end

    context 'with one director and one actor' do
      let!(:director) { create :participant }
      let!(:appearance_1) { create :appearance, title: title, participant: director, role: :director }

      let!(:actor) { create :participant }
      let!(:appearance_2) { create :appearance, title: title, participant: actor, role: :actor }

      it { is_expected.to match_array([actor]) }
    end

    context 'with many actors' do
      let!(:actor_1) { create :participant }
      let!(:appearance_1) { create :appearance, title: title, participant: actor_1, role: :actor }

      let!(:actor_2) { create :participant }
      let!(:appearance_2) { create :appearance, title: title, participant: actor_2, role: :actor }

      it { is_expected.to match_array([actor_1, actor_2]) }
    end
  end
end
