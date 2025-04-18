class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

TreeNode? searchBST(TreeNode? root, int val) {
  if (root == null) {
    return null;
  }

  if (root.val == val) {
    return root;
  } else if (val < root.val) {
    return searchBST(root.left, val);
  } else {
    return searchBST(root.right, val);
  }
}

void main() {
  TreeNode left = TreeNode(2, TreeNode(1), TreeNode(3));
  TreeNode right = TreeNode(7);
  TreeNode root = TreeNode(4, left, right);

  int val = 2;

  var searchValue = searchBST(root, val);
  if (searchValue == null) {
    print('Null 입니다.');
  } else {
    print(searchValue.val);
  }
}
