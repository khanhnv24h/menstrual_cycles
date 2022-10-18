class Request {
  String uid;
  Map<String, int> items;
  String requestTime;
  String acceptTime;
  int expectedTime; // in minute
  int totalPrice;
  String customerName;
  String customerAddress;
  String shopName;
  String shopkeeperName;
  String status;
  String error;
  /*
    STATUS_PENDING
    STATUS_ACCEPTED
    STATUS_COMPLETED
    STATUS_REJECTED
   */

  Request({
    required this.uid,
    required this.items,
    required this.requestTime,
    required this.acceptTime,
    required this.expectedTime,
    required this.totalPrice,
    required this.customerName,
    required this.customerAddress,
    required this.shopkeeperName,
    required this.shopName,
    required this.status,
    required this.error,
  });
}
