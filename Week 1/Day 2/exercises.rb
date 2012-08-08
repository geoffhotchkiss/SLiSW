def print_16_array(thearray)
	my_4_array = []
	thearray.each do |value|
		my_4_array.push(value)
		if my_4_array.size == 4
			puts my_4_array.join(", ")
			my_4_array.clear
		end
	end
end

print_16_array((0..15))

puts

(0..15).each_slice(4) {|values| puts values.join(", ")}

	 	
class Tree
	attr_accessor :children, :node_name

	def initialize(treehash={})
		@node_name = treehash.keys.first
		@children = []
		treehash[@node_name].each {|node, value| children.push(Tree.new({node => value}))}
	end

	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end

	def visit(&block)
		block.call self
	end
end

ruby_tree = Tree.new({'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {}}}})
puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}