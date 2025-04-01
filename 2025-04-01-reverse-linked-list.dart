class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, this.next);
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    ListNode? current = head;

    while (current != null) {
      ListNode? nextTemp = current.next; // 다음 노드를 임시 저장
      current.next = prev; // 현재 노드의 방향을 이전 노드로 변경
      prev = current; // 이전 노드를 현재 노드로 이동
      current = nextTemp; // 현재 노드를 다음 노드로 이동
    }
    return prev;
  }
}

void main() {
  ListNode node1 = ListNode(1, null);
  ListNode node2 = ListNode(2, null);
  ListNode node3 = ListNode(3, null);
  ListNode node4 = ListNode(4, null);
  ListNode node5 = ListNode(5, null);
  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  node4.next = node5;
  Solution solution = Solution();
  ListNode? reversedHead = solution.reverseList(node1);
  ListNode? current = reversedHead;
  while (current != null) {
    print(current.val);
    current = current.next;
  }
}
