import 'dart:collection';

void main() {
  RecentCounter recentCounter = new RecentCounter();
  recentCounter.ping(1); // [1], 반환값: 1
  recentCounter.ping(100); // [1, 100], 반환값: 2
  recentCounter.ping(3001); // [1, 100, 3001], 반환값: 3
  recentCounter.ping(3002);
}

class RecentCounter {
  final Queue queue = Queue();

  int ping(int t) {
    queue.add(t);
    while (queue.isNotEmpty && queue.first < t - 3000) {
      queue.removeFirst();
    }

    return queue.length;
  }
}
