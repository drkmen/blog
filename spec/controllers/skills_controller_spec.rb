require 'rails_helper'

RSpec.describe SkillsController, type: :controller do
  before do
    3.times { FactoryGirl.create(:skill) }
  end

  describe 'GET #index' do
    subject { get :index, format: :json }

    it_behaves_like 'success responses'

    it 'should have valid json' do
      json = JSON.parse(subject.body)['skills']
      expect(json).to be_an_instance_of(Array)
      expect(json.size).to be 3

      exp = json.first

      expect(exp).to have_key('id')
      expect(exp).to have_key('name')
      expect(exp).to have_key('value')
      expect(exp).to have_key('start_date')
    end
  end
end
