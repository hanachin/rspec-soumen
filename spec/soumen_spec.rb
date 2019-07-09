using Module.new {
  refine(Integer) do
    def 冷やしそうめんがうまい?
      self >= 25
    end
  end
}

RSpec.describe '冷やしそうめん' do
  it { is_expected.to be }

  context '気候変動' do
    let(:temperature) { rand(10..40) }

    subject { temperature.冷やしそうめんがうまい? }

    it { is_expected.to be }
  end
end
