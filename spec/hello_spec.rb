require_relative '../lib/hello'

RSpec.describe Hello do
  it "message return hello" do
    expect(Hello.new.message).to eq "hello"
  end
end

RSpec.describe '四則演算' do
  it '1 + 1 は 2 になること' do
    expect(1 + 1).to eq 2
  end
  it '10 - 1 == 9 ??' do
    expect(10 - 1).to eq 9
  end
end

RSpec.describe User do
  describe '#greet' do
    it 'if under age 12, put hiragana' do
      user = User.new(name: 'taro', age:12)
      expect(user.greet).to eq 'ぼくはtaroだよ。'
    end
    it 'if age is more than 13, put kanji' do
      user = User.new(name: 'taro', age: 13)
      expect(user.greet).to eq "僕はtaroです。"
    end
  end

end

#describeはテスト対象をグループ化する
#contextで条件や状況を明示する
#itでテストする確認項目を表す
