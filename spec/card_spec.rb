require "rspec"
require "card.rb"

describe Card do

  let(:my_card) {Card.new(9, :spade)}

  describe '#initialize' do

    it "stores a face value" do
      expect(my_card.face_value).to eq(9)
    end

    it "stores a suit" do
      expect(my_card.suit).to eq(:spade)
    end

  end

  it "can't change value after initialize" do
    error = NoMethodError.new
    expect { my_card.face_value = 4}.to raise_error
  end


end
#
# def expect(arg, &blk)
#   if blk
#     begin
#       blk.call
#     rescue
#       do_rspecy_stuff
#     end
#   else
#     do_rspecy_stuff
#   end
# end
