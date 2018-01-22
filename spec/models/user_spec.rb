require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "password", password_confirmation: "password") }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_least(1) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email) }
  it { is_expected.to validate_length_of(:email).is_at_least(3) }
  it { is_expected.to allow_value("user@bloccit.com").for(:email) }

  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to have_secure_password }
  it { is_expected.to validate_length_of(:password).is_at_least(6) }

  describe "attributes" do
    it "should have name and email attributes" do
      expect(user).to have_attributes(name: "Bloccit User", email: "user@bloccit.com", password: "password", password_confirmation: "password")
    end
  end

  describe "before_save" do
    context "tests for the before_save" do
      let(:user_test) { User.new(name: "bloccit user", email: "USER@Bloccit.com", password: "password", password_confirmation: "password") }

      it "should check if the email is all lowercase" do
        user_test.save!
        user_test.reload

        expect(user_test.email).to eq("user@bloccit.com")
      end

      it "should format the user name to be capitalized" do
        user_test.save!
        user_test.reload

        expect(user_test.name).to eq("Bloccit User")
      end
    end
  end

  describe "invalid user" do
    let(:user_with_invalid_name) { User.new(name: "", email: "user@bloccit.com", password: "password", password_confirmation: "password") }
    let(:user_with_invalid_email) { User.new(name: "Bloccit User", email: "", password: "password", password_confirmation: "password") }

    it "should be invalid user due to blank name" do
      expect(user_with_invalid_name).to_not be_valid
    end

    it "should be invalid user due to blank email" do
      expect(user_with_invalid_email).to_not be_valid
    end

  end
end
