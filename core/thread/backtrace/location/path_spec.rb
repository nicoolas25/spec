require File.expand_path('../../../../../spec_helper', __FILE__)
require File.expand_path('../fixtures/classes', __FILE__)

describe 'Thread::Backtrace::Location#path' do
  before :each do
    @frame = ThreadBacktraceLocationSpecs.locations[0]
  end

  it 'returns the absolute path of the call frame' do
    @frame.path.should == __FILE__
  end
end
