require 'rails_helper'


RSpec.describe Collaborator, type: :model do
  let(:user) { User.create!(email: "user@mail.com", encrypted_password: "helloworld") }
  let(:wiki) { Wiki.create!(title: "Wiki Title", body: "Wiki body", user: user) }
  let(:collaborator) { Collaborator.create!(user: user, wiki: wiki) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belog_to(:wiki) }


end
