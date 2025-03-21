class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

int maxDepth(TreeNode? root) {
  if (root == null) {
    return 0;
  }

  int leftDepth = maxDepth(root.left);
  int rightDepth = maxDepth(root.right);
  return 1 + (leftDepth > rightDepth ? leftDepth : rightDepth);
}

// 현재 root : 3 / leftDepth : 1 / rightDepth : 2 / return : 2 + 1 => 3

// 현재 root : 9 / leftDepth : 0 / rightDepth : 0 / return값이 1

// 현재 root : 20 / leftDepth : 1 / rightDepth : 1 / return : 2

// 현재 root : 15 / leftDepth : 0 / rightDepth : 0 / return값 : 1
// 현재 root : 7 / leftDepth : 0 / rightDepth : 0 / return : 1
