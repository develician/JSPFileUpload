package file;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class FileDAO {
    private Connection conn;

    public FileDAO() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String dbURL = "jdbc:mysql://localhost:3306/FILE";
            String dbID = "root";
            String dbPass = "ehdgh3333";
            conn = DriverManager.getConnection(dbURL, dbID, dbPass);

        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    public int upload(String fileName, String realFileName) {
        String SQL = "INSERT INTO FILE VALUES(?, ?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, fileName);
            pstmt.setString(2, realFileName);
            return pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return -1;
    }
}
