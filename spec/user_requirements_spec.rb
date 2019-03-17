require "echo"

describe Echo do
  subject(:echo) { described_class.new }
  it "User typed 'hello, world' and then 'exit'" do
    # allow($stdin).to receive(:gets).and_return('hello, world')
    allow($stdin).to receive(:gets) do
      @counter ||= 0
      response = if @counter >= 1 # an arbitrary threshold
        'exit'
      else
        'hello, world'
      end
      @counter += 1
      response
    end
    test_time = Time.new(2018, 01, 9, 16, 26, 2, "+00:00")
    allow(Time).to receive(:new).and_return(test_time)
    expect{ echo.echo }.to output("Say something:\n2018-01-09 | 16:26 | You said: 'hello, world'!\nSay something:\nGoodbye!\n").to_stdout
  end

  # it "User typed 'exit'" do
  #   allow($stdin).to receive(:gets).and_return('exit')
  #   expect{ echo.echo }.to output("Say something:\nGoodbye!\n").to_stdout
  # end
end
