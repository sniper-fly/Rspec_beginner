require_relative '../lib/hello'
require 'pry'

# RSpec.describe Hello do
#   it "message return hello" do
#     expect(Hello.new.message).to eq "hello"
#   end
# end

# RSpec.describe '四則演算' do
#   it '1 + 1 は 2 になること' do
#     expect(1 + 1).to eq 2
#   end
#   it '10 - 1 == 9 ??' do
#     expect(10 - 1).to eq 9
#   end
# end

RSpec.describe User do
  describe '#greet' do
    let(:user) { User.new(**params) }
    let(:params) { {name: 'taro', age: age} }
    context '12歳以下の場合' do
      let(:age) { 12 }
      it 'ひらがなで答えること' do
        expect(user.greet).to eq 'ぼくはtaroだよ。'
      end
    end
    context '13歳以上の場合' do
      let(:age) { 13 }
      it '漢字で答えること' do
        expect(user.greet).to eq "僕はtaroです。"
      end
    end
  end
end

# RSpec.describe User do
#   describe '#greet' do
#     let(:user) { User.new(**params) }
#     let(:params) { { name: 'たろう', age: age } }
#     context '12歳以下の場合' do
#       let(:age) { 12 }
#       it 'ひらがなで答えること' do
#         user = User.new(**params)
#         expect(user.greet).to eq 'ぼくはたろうだよ。'
#       end
#     end
#     context '13歳以上の場合' do
#       let(:age) { 13 }
#       it '漢字で答えること' do
#         user = User.new(**params)
#         expect(user.greet).to eq '僕はたろうです。'
#       end
#     end
#   end
# end

#describeはテスト対象をグループ化する
#contextで条件や状況を明示する
#itでテストする確認項目を表す
#before do end ブロックはitの前にかならず毎回呼ばれる
