class Tree
  attr_accessor :children, :node_name
  def initialize(tree) @children = children
      @node_name = tree.keys.first
      @children = []
      tree[@node_name].each {|k, v| @children << Tree.new(k => v) }
  end
  def visit_all(&block)
      visit &block
      children.each {|c| c.visit_all &block}
  end
  def visit(&block)
      block.call self
  end
end

tree = Tree.new({'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } })
tree.visit {|node| puts node.node_name}
tree.visit_all {|node| puts node.node_name}
