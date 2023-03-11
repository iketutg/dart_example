Future<String> getTypeCustomer() async {
  return "Silver";
}

Future<String> getStatusCustomer() async {
  return "Active";
}

Future<String> notifyCustomer(String status, String typeCustomer) async {
  throw Exception("Service Notif Error");
}

Future<void> process() async {
  try {
    String typeCustomer = await getTypeCustomer();
    String status = await getStatusCustomer();
    String response = await notifyCustomer(status, typeCustomer);
    print(response);
  } catch (e) {
    print(e);
  } finally {
    print("Done say()");
  }
}

void main() {
  process();
  print("Finish");
}
