using Module.new {
  refine(Array) do
    def やっぱり?
      join == "揖保乃糸"
    end
  end
}

RSpec.describe '冷やしそうめん' do
  it { is_expected.to be }

  context '揖保乃糸' do
    let(:soumen) { "揖保乃糸".chars.shuffle }

    subject { soumen.やっぱり? }

    it { is_expected.to be }
  end
end
