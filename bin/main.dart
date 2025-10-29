import '../lib/binary_tree.dart';

void main() {
  final myNode = BinaryNode(
    42,
    leftChild: BinaryNode(10,
        leftChild: BinaryNode(7),
        rightChild: BinaryNode(8, leftChild: BinaryNode(1))),
    rightChild:
        BinaryNode(3, leftChild: BinaryNode(13), rightChild: BinaryNode(4)),
  );

  print(myNode.toString());
}
