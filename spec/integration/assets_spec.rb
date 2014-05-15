require 'spec_helper'

describe 'Assets' do
  subject(:asset) { page.body }

  describe 'Static' do
    it 'provides the crown header' do
      visit '/assets/header-crown.png'
      asset.should_not be_empty
    end
  end

  describe 'Compiled JS' do
    it 'includes govuk_admin tracking code' do
      visit '/assets/govuk_admin.js'
      expect(asset).to include('GOVUK.track')
    end
  end
end
