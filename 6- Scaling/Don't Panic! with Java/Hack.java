import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Scanner;

public class Hack {
    public static void main(String[] args) throws Exception {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter the new password: ");
        String password = scanner.nextLine();

        String query = "UPDATE \"users\" SET \"password\" = '" + password + "' WHERE \"username\" = 'admin';";
        Connection connection = DriverManager.getConnection("jdbc:sqlite:dont-panic.db");
        Statement statement = connection.createStatement();
        statement.executeUpdate(query);
        connection.close();
    }
}
