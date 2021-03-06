# # encoding: utf-8

# Inspec test for recipe django::web

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

# Verify django is installed
describe command('django-admin --version') do
  its('stdout') { should match /1.6.1/ }
end

# Verify git is installed as a service
describe package 'git' do
	it { should be_installed }
end

describe command('which pip') do
  its('stdout') { should match /pip/ }
end