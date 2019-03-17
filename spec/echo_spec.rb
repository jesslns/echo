require "echo"

describe Echo do
  subject(:echo) { described_class.new }
  describe 'greeting' do
    it "prints out 'Say something:'" do
      expect{ echo.greeting }.to output("Say something:\n").to_stdout
    end
  end

# I first TDD with echo like a unit test to add complexity to the method,
# As the code developed, below two tests are no longer needed as they cannot mimic the loop
# Notice that I have also refactored timestamp from my echo method

  # describe "response" do
  #   it "returns 'You said: !'" do
  #     test_time = Time.new(2018, 01, 9, 16, 26, 2, "+00:00")
  #     allow(Time).to receive(:new).and_return(test_time)
  #     allow($stdin).to receive(:gets).and_return('hello, world')
  #     expect{ echo.echo }.to output("2018-01-09 | 16:26 | You said: 'hello, world'!\n").to_stdout
  #   end
  # end
  #
  # describe "response" do
  #   it "says goodbye when typed in exit" do
  #     allow($stdin).to receive(:gets).and_return('exit')
  #     expect{ echo.echo }.to output("Goodbye!\n").to_stdout
  #   end
  # end

  describe "timestamp" do
    it "returns 'You said: !'" do
      test_time = Time.new(2018, 01, 9, 16, 26, 2, "+00:00")
      allow(Time).to receive(:new).and_return(test_time)
      expect(echo.timestamp).to eq("2018-01-09 | 16:26 |")
    end
  end
end
