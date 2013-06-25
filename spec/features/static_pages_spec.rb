require 'spec_helper'

describe 'Static Pages' do

	subject { page }

	describe 'home page' do

		describe 'while signed-out' do
			before { visit root_path }

			it { should have_title('U.P. Propane') }
		end
	end
end