# frozen_string_literal: true

require 'json'

RSpec.describe HomogeneousPicking::Picker do
  subject { described_class.new(recommendations_matrix).pick(4) }

  def load_json(filename)
    JSON.parse(File.read("spec/datasets/#{filename}.json"), symbolize_names: true)
  end

  describe 'Get homogeneous recommendations' do
    context 'First scenario' do
      let(:recommendations_matrix) { get_recommendations_for('first_scenario') }
      it { is_expected.to eq [345048] }
    end

    context 'Second scenario' do
      let(:recommendations_matrix) { get_recommendations_for('second_scenario') }
      it { is_expected.to eq [790952, 103678, 788138, 802358] }
    end

    context 'Third scenario' do
      let(:recommendations_matrix) { get_recommendations_for('third_scenario') }
      it { is_expected.to eq [103678, 790952, 802358, 788138] }
    end

    context 'Fourth scenario' do
      let(:recommendations_matrix) { get_recommendations_for('fourth_scenario') }
      it { is_expected.to eq [790952, 103678, 802358, 562873] }
    end
  end

  def get_recommendations_for(scenario)
    get_tokens_from_json(load_json(scenario))
  end

  def get_tokens_from_json(json)
    json.values.map do |value|
      value.map { |article| article[:token].to_i }
    end
  end
end
