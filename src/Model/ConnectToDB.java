package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectToDB {

	Connection conn = null;
	String url = "jdbc:mysql://localhost:3306/banhang_javaweb?useUnicode=yes&characterEncoding=UTF-8";
	String username = "root";
	String password = "dangnam";

	public Connection OpenConnnect() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password);
			if(conn != null) {
				return conn;
			} 
			else {
				return conn;
			}
		} 
		catch (ClassNotFoundException e) {
			System.out.println("Lỗi Driver db: ");
			e.printStackTrace();
		}
		catch (SQLException e) {
			System.out.println("Lỗi getConnection");
			e.printStackTrace();
		} 
		return null;
	}

	public void CloseConnect() {
		try {
			conn.close();
		} catch (SQLException e) {
			System.out.println("Lỗi đóng kết nối: ");
			System.out.println(e.getMessage());
		}
	}

	public static void main(String[] args) {
		System.out.println("Com me may");
		ConnectToDB cn= new ConnectToDB();
		cn.OpenConnnect();
		System.out.println(cn.OpenConnnect());
	}
}
