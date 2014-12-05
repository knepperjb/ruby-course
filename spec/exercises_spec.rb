# require 'spec_helper'
require "./exercises.rb"

describe 'Exercise 0' do 
  it "triples the length of a string" do
    result = Exercises.ex0("ha")
    expect(result).to eq("hahaha")
  end

  it "returns 'nope' if string is 'wishes'" do
    result = Exercises.ex0("wishes")
    expect(result).to eq('nope')
  end

describe 'Exercise 1' do
  it "returns the number of elements in an array" do
    result = Exercises.ex1([1,2,3])
    expect(result).to eq(3)
  end

describe 'Exercise 2' do
  it "returns the second element of an array" do
    result = Exercises.ex2([1,2,4])
    expect(result).to eq(2)
  end

describe 'Exercise 3' do
  it "returns the sum of the given array of numbers" do
    result = Exercises.ex3([1,2,3])
    expect(result).to eq(6)
  end

describe 'Exercise 4' do
  it "returns the max number of the given array" do
    result = Exercises.ex4([1,2,3,5,7])
    expect(result).to eq(7)
  end

describe 'Exercise 5' do
  it "Iterates through an array and 'puts' each element" do
    STDOUT.should_receive(:puts).with(1)
    STDOUT.should_receive(:puts).with(2)
    STDOUT.should_receive(:puts).with(3)
    STDOUT.should_receive(:puts).with(4)
    result = Exercises.ex5([1,2,3,4])
  end

describe 'Exercise 6' do
  it  "Updates last item in array to 'panda', if already 'panda' make it GODZILLA" do
    result = Exercises.ex6([1,2,3,4,5])
    expect(result).to eq([1,2,3,4,'panda'])

    result = Exercises.ex6([1,2,'panda'])
    expect(result).to eq([1,2, 'GODZILLA']) 
  end

describe 'Exercise 7' do
  it "if str exists in the array, add str to the end of the array" do
    result = Exercises.ex7([1,2,'string',4,5], 'string')
    expect(result).to eq([1,2,'string',4,5,'string'])
  end


describe 'Exercise 8' do
  it "prints out the name and occupation of people in a hash" do
    STDOUT.should_receive(:puts).with('Bob')
    STDOUT.should_receive(:puts).with('builder')
    people = [{:name => "Bob", :occupation => "builder"}]
    result = Exercises.ex8(people)
  end

describe 'Exercise 9' do
  it "returns 'true' if the given time is in a leap year, otherwise returns false" do
    result = Exercises.ex9(2000)
    expect(result).to eq(true)
  end

describe 'Exercise 10' do
  it "returns 'happy hour' if it is between 4 and 6pm, else returns 'normal prices'" do
    # allow(Time.now).to receive(:hour).and_return(12)
    Time.stub(:now).and_return(Time.mktime(2014,1,1,14))

    result = Exercises.ex10
    expect(result).to eq('normal prices')

    Time.stub(:now).and_return(Time.mktime(2014,1,1,17))
    result = Exercises.ex10
    expect(result).to eq ('happy hour')
  end

describe 'Exercise 11' do
  it "returns the sum of two numbers if they are both integers" do
    result = Exercises.ex11(2, 3)
    expect(result).to eq(5)
  end
      # result = Exercises.ex11(2, 4.5)
  it "raises an error if one number is not an integer" do
    expect {raise Exercises.ex11(2, 4.5) }.to raise_error
  end

describe 'Exercise 12' do
  it "returns an ordered aray with all characters to fill a range" do
    result = Exercises.ex12('b', 'g')
    expect(result).to eq(['b', 'c', 'd', 'e', 'f', 'g'])
  end


 


  
end