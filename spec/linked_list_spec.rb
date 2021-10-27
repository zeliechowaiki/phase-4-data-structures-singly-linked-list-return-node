describe LinkedList do
  let(:linked_list) do 
    linked_list = LinkedList.new
    linked_list.head = Node.new(1)
    linked_list.head.next_node = Node.new(2)
    linked_list.head.next_node.next_node = Node.new(3)
    linked_list # 1 -> 2 -> 3
  end

  describe "#nth_from_end" do
    it "returns the value of the nth node from the end of the list" do
      expect(linked_list.nth_from_end(1)).to eq(3)
      expect(linked_list.nth_from_end(2)).to eq(2)
      expect(linked_list.nth_from_end(3)).to eq(1)
    end

    it "returns nil if n is greater than the length of the list" do
      expect(linked_list.nth_from_end(4)).to eq(nil)
    end

    it "returns nil if n is less than 1" do
      expect(linked_list.nth_from_end(0)).to eq(nil)
    end

    it "returns nil if the list is empty" do
      empty_list = LinkedList.new
      expect(empty_list.nth_from_end(1)).to eq(nil)
    end
  end
end
