require 'rails_helper'
describe JapaneseUser, type: :model do
  describe '#create' do
    it "is invalid without a name" do
      japanese_user = FactoryBot.build(:japanese_user, name: nil)
      japanese_user.valid?
      expect(japanese_user.errors[:name]).to include("can't be blank")
    end

    it "is invalid without an email" do
      japanese_user = FactoryBot.build(:japanese_user, email: nil)
      japanese_user.valid?
      expect(japanese_user.errors[:email]).to include("can't be blank")
    end

    it "is invalid with a duplicate email address" do
      japanese_user = FactoryBot.create(:japanese_user)
      another_japanese_user = FactoryBot.build(:japanese_user, email: japanese_user.email)
      another_japanese_user.valid?
      expect(another_japanese_user.errors[:email]).to include("has already been taken")
    end

    it "is invalid without a password" do
      japanese_user = FactoryBot.build(:japanese_user, password: nil)
      japanese_user.valid?
      expect(japanese_user.errors[:password]).to include("can't be blank")
    end

    it "is valid with a password that has more than or equal to 6 characters" do
      japanese_user = FactoryBot.build(:japanese_user, password: "1111a")
      japanese_user.valid?
      expect(japanese_user.errors[:password]).to include("must be more than or equal to 6 characters")
    end

    it "is invalid without a password_confirmation " do
      japanese_user = FactoryBot.build(:japanese_user, password_confirmation: nil)
      japanese_user.valid?
      expect(japanese_user.errors[:password_confirmation]).to include("can't be blank")
    end

    it "is invalid without a selfy" do
      japanese_user = FactoryBot.build(:japanese_user, selfy: nil)
      japanese_user.valid?
      expect(japanese_user.errors[:selfy]).to include("can't be blank")
    end

    it "is invalid without a sex_id" do
      japanese_user = FactoryBot.build(:japanese_user, sex_id: nil)
      japanese_user.valid?
      expect(japanese_user.errors[:sex_id]).to include("can't be blank")
    end

    it "is invalid without a prefecture_id" do
      japanese_user = FactoryBot.build(:japanese_user, prefecture_id: nil)
      japanese_user.valid?
      expect(japanese_user.errors[:prefecture_id]).to include("can't be blank")
    end

    it "is invalid without a how_old" do
      japanese_user = FactoryBot.build(:japanese_user, how_old: nil)
      japanese_user.valid?
      expect(japanese_user.errors[:how_old]).to include("can't be blank")
    end

  end
end
