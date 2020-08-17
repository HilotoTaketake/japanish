require 'rails_helper'
describe EnglishUser, type: :model do
  describe '#create' do
    it "is invalid without a name" do
      englilsh_user = FactoryBot.build(:english_user, name: nil)
      englilsh_user.valid?
      expect(englilsh_user.errors[:name]).to include("can't be blank")
    end

    it "is invalid without an email" do
      englilsh_user = FactoryBot.build(:english_user, email: nil)
      englilsh_user.valid?
      expect(englilsh_user.errors[:email]).to include("can't be blank")
    end

    it "is invalid with a duplicate email address" do
      english_user = FactoryBot.create(:english_user)
      another_englilsh_user = FactoryBot.build(:english_user, email: english_user.email)
      another_englilsh_user.valid?
      expect(another_englilsh_user.errors[:email]).to include("has already been taken")
    end

    it "is invalid without a password" do
      englilsh_user = FactoryBot.build(:english_user, password: nil)
      englilsh_user.valid?
      expect(englilsh_user.errors[:password]).to include("can't be blank")
    end

    it "is valid with a password that has more than or equal to 6 characters" do
      englilsh_user = FactoryBot.build(:english_user, password: "1111a")
      englilsh_user.valid?
      expect(englilsh_user.errors[:password]).to include("must be more than or equal to 6 characters")
    end

    it "is invalid without a password_confirmation " do
      englilsh_user = FactoryBot.build(:english_user, password_confirmation: nil)
      englilsh_user.valid?
      expect(englilsh_user.errors[:password_confirmation]).to include("can't be blank")
    end

    it "is invalid without a selfy" do
      englilsh_user = FactoryBot.build(:english_user, selfy: nil)
      englilsh_user.valid?
      expect(englilsh_user.errors[:selfy]).to include("can't be blank")
    end

    it "is invalid without a sex_id" do
      englilsh_user = FactoryBot.build(:english_user, sex_id: nil)
      englilsh_user.valid?
      expect(englilsh_user.errors[:sex_id]).to include("can't be blank")
    end

    it "is invalid without a prefecture_id" do
      englilsh_user = FactoryBot.build(:english_user, prefecture_id: nil)
      englilsh_user.valid?
      expect(englilsh_user.errors[:prefecture_id]).to include("can't be blank")
    end

    it "is invalid without a how_old" do
      englilsh_user = FactoryBot.build(:english_user, how_old: nil)
      englilsh_user.valid?
      expect(englilsh_user.errors[:how_old]).to include("can't be blank")
    end

  end
end
