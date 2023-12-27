abstract class DBConnectionInterface {
  connect();
}

class MySQLConnection implements DBConnectionInterface {
  @override
  connect() {
    return 'Database Connection Succesful';
  }
}

class PasswordReminder {
  // OCP
  DBConnectionInterface dbConnection;

  PasswordReminder(this.dbConnection);

  initConnection() {
    return dbConnection.connect();
  }
}

void main(List<String> args) {
  final passReminder = PasswordReminder(MySQLConnection());
  print(passReminder.initConnection());
}
