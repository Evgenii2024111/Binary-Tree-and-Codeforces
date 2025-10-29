class BinaryNode {
  final int value;
  final BinaryNode? leftChild;
  final BinaryNode? rightChild;

  BinaryNode(this.value, {this.leftChild, this.rightChild});

  @override
  String toString() {
    final buffer = StringBuffer();
    _buildTree(buffer, '', true, true);
    return buffer.toString();
  }

  void _buildTree(
    StringBuffer buffer,
    String prefix,
    bool isTail,
    bool isRoot,
  ) {
    buffer.write(prefix);
    if (!isRoot) {
      buffer.write(isTail ? '└── ' : '├── ');
    }
    buffer.writeln(value);

    final children = <BinaryNode?>[leftChild, rightChild]
        .where((child) => child != null)
        .cast<BinaryNode>()
        .toList();

    for (var i = 0; i < children.length; i++) {
      final child = children[i];
      final newPrefix = prefix + (isTail && isRoot ? '    ' : '│   ');
      final isLastChild = i == children.length - 1;
      child._buildTree(buffer, newPrefix, isLastChild, false);
    }
  }
}
