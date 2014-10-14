package connection;

import java.sql.*;

import javax.naming.*;
import javax.sql.DataSource;

public class connMysql {
//	private  String driver = "com.mysql.jdbc.Driver";
//	private  String url = "jdbc:mysql://localhost:3306/bookdb";
//	private  String username = "root";
//	private  String password = "123456";
	private  Connection conne;
	private Statement statement;
	public  void createConn() {
		try {
//			Class.forName(driver);
//			conne = DriverManager.getConnection(url,username,password);
			Class.forName("com.mysql.jdbc.Driver");
			conne = DriverManager.getConnection("jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_stdofarmy", "kyxwnzn5n4", "5x3m0y3l24kl0wh4jl132334yhh14kiklh2ll24x");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Connection getConn() {
		if (conne == null) {
			createConn();
		}
		return conne;
	}

	public ResultSet query(String sql) {
		ResultSet rs = null;
		if (conne == null) {
			createConn();
		}
		try {
			statement = conne.createStatement();
			rs = statement.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public  int save(String sql){
		int result =0;
		if (conne == null) {
			createConn();
		}
		try {
			Statement statement = conne.createStatement();
			result = statement.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close();
		}
		return result;
	}
	
	private  void close(){
		if(null != statement){
			try{
				statement.close();
				statement = null;
			}catch(SQLException e){
				e.printStackTrace();
			}
			statement = null;
		}
		if(null != conne){
			try{
				conne.close();
				conne = null;
			}catch(SQLException e){
				e.printStackTrace();
			}
			conne = null;
		}
	}

}
