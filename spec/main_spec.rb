class MyClass
  def explicit_block(&block)
    block.call
  end

  def implicit_block
    explicit_block do
      yield block_given? if block_given?
    end
  end
end


@test_result = false
MyClass.new.explicit_block do
  @test_result = true
end

puts "explicit_block result: #{@test_result}"

@test_result = false
MyClass.new.implicit_block do |bg|
  @test_result = true
end

puts "implicit_block result: #{@test_result}"


describe "Showing block_given? doesn't work." do
  it "asserts" do
    true.should.be.true
  end
end
