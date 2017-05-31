require 'rails_helper'

RSpec.describe ExperiencesController, type: :controller do
  before do
    3.times { FactoryGirl.create(:experience) }
  end

  describe 'GET #index' do
    subject { get :index, format: :json }

    it_behaves_like 'success responses'

    it 'should have valid json' do
      json = JSON.parse(subject.body)['experiences']
      expect(json).to be_an_instance_of(Array)
      expect(json.size).to be 3

      exp = json.first

      expect(exp).to have_key('id')
      expect(exp).to have_key('job_title')
      expect(exp).to have_key('employer')
      expect(exp).to have_key('description')
      expect(exp).to have_key('from')
      expect(exp).to have_key('to')
      expect(exp).to have_key('study')
    end
  end
end
