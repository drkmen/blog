require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  before do
    3.times { FactoryGirl.create(:project) }
  end

  describe 'GET #index' do
    subject { get :index, format: :json }

    it_behaves_like 'success responses'

    it 'should have valid json' do
      json = JSON.parse(subject.body)['projects']
      expect(json).to be_an_instance_of(Array)
      expect(json.size).to be 3

      exp = json.first

      expect(exp).to have_key('id')
      expect(exp).to have_key('name')
      expect(exp).to have_key('description')
      expect(exp).to have_key('image_path')
      expect(exp).to have_key('link')
      expect(exp).to have_key('tags')
    end

    it 'should ordered by DESC' do
      json = JSON.parse(subject.body)['projects']
      ids = json.to_a.map { |project| project['id'] }
      expect(ids).to eq [6, 5, 4, 3, 2, 1]
    end
  end
end
