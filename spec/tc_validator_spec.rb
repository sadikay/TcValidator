require 'spec_helper'
require 'tc_validator'

describe TcValidator do

  it 'has a version number' do
    expect(TcValidator::VERSION).not_to be nil
  end

  it 'does something wrong entered values' do
    expect { TcValidator.check_tc_id('xxxxxxxxx', 'Sadık', Ay, '11111') }.to raise_error
  end

  it 'does something true entered parameters types' do
    expect { TcValidator.check_tc_id('xxxxxxxxx', 'Sadık', 'Ay', '1111') }.to_not raise_error
  end
end
