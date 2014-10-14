package model;

import bean.bookAndAuthor;
import connection.connMysql;

import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;


public class bookAndAuthorModel {
	/////////////////////////
	//功能1
	public List<bookAndAuthor> searchBook(String authorName) throws SQLException {
		String sql;
		connMysql pool = new connMysql();
		if(authorName!="")
		sql = "SELECT book.ISBN AS isbn,book.Title AS title,book.Publisher AS publisher,author.Name AS name FROM book JOIN author  ON author.AuthorID = book.AuthorID where Name = '"+authorName+"'";
		else
		sql = "SELECT book.ISBN AS isbn,book.Title AS title,book.Publisher AS publisher,author.Name AS name FROM book JOIN author  ON author.AuthorID = book.AuthorID";
		
		ResultSet rs=pool.query(sql);
		List<bookAndAuthor> bookAndAuthors = new ArrayList<bookAndAuthor>();
		try {
			bookAndAuthor baa = null;
			while(rs.next()) {
				baa = new bookAndAuthor();
				baa.setISBN(rs.getString("isbn"));
				baa.setName(rs.getString("name"));
				baa.setTitle(rs.getString("title"));
				baa.setPublisher(rs.getString("publisher"));
				bookAndAuthors.add(baa);
//				System.out.println(authorName);
//				System.out.println(c.getTitle());
//				System.out.println(rs.getString("publisher"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw(e);
		}
		rs.close();
		return bookAndAuthors;
	}
	
	
	///////////////////////////
	////功能2
	public bookAndAuthor showMore(String bookISBN) throws SQLException {
		connMysql pool = new connMysql();
		String sql = "SELECT book.ISBN AS isbn,book.Title AS title,book.AuthorID AS authorid,book.Publisher AS publisher,book.PublishDate AS publishdate,book.Price AS price,author.Name AS name,author.Age AS age,author.Country AS country FROM book JOIN author  ON author.AuthorID=book.AuthorID  where book.ISBN ='"+bookISBN+"'";
		ResultSet rs=pool.query(sql);
		bookAndAuthor baa = null;
		try {
			if(rs.next()) {
				baa = new bookAndAuthor();
				baa.setISBN(rs.getString("isbn"));
				baa.setTitle(rs.getString("title"));
				baa.setAuthorID(rs.getString("authorid"));
				baa.setPublisher(rs.getString("publisher"));
				baa.setPublishDate(rs.getString("publishdate"));
				baa.setPrice(rs.getString("price"));
				baa.setName(rs.getString("name"));
				baa.setAge(rs.getString("age"));
				baa.setCountry(rs.getString("country"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		rs.close();
		return baa;
	}
	
	///////////////////////////
	////功能3
	public int deleteById(String bookISBN) {
		connMysql pool = new connMysql();
		String sql = "delete from book where ISBN ="+bookISBN;
		return pool.save(sql);
	}
	public int deleteAuthor(bookAndAuthor baa){
		connMysql pool = new connMysql();
		String sql = "delete from author where Name ="+baa.getName();
		return pool.save(sql);
	}
	
	//////////////////////////
	////功能4
	public int addBookAndAuthor(bookAndAuthor baa){
		int result=0;
		result += addBook(baa);
		result += deleteAuthor(baa);
		result += addAuthor(baa);
		return result;
	}
	public int addBook(bookAndAuthor baa) {
		connMysql pool = new connMysql();
		String sql = "insert into book values ('"+baa.getISBN()+"','"+baa.getTitle()+"','"+baa.getAuthorID()+"','"+baa.getPublisher()+"','"+baa.getPublishDate()+"','"+baa.getPrice()+"')";
		return pool.save(sql);
		
	}
	public int addAuthor(bookAndAuthor baa){
		connMysql pool = new connMysql();
		String sql = "insert into author values ('"+baa.getAuthorID()+"','"+baa.getName()+"','"+baa.getAge()+"','"+baa.getCountry()+"')";
		return pool.save(sql);
	}
	
	/////////////////////////
	////功能5
	public int updateBook(bookAndAuthor baa) {
		connMysql pool = new connMysql();
		String sql = "update book set AuthorID = '"+baa.getAuthorID()+"',Publisher = '"+baa.getPublisher()+"', PublishDate = '"+baa.getPublishDate()+"',Price = '"+baa.getPrice()+"' where ISBN = "+baa.getISBN();
		return pool.save(sql);
	}
}
