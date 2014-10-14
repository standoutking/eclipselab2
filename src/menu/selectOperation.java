package menu;
import model.bookAndAuthorModel;
import bean.bookAndAuthor;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class selectOperation extends ActionSupport {
	
	private bookAndAuthorModel baam = new bookAndAuthorModel();
	private List<bookAndAuthor> baas;
	private bookAndAuthor one;	
	private String ISBN;
	private String Name;
	
	public List<bookAndAuthor> getBaas() {
		return baas;
	}
	public void setBaas(List<bookAndAuthor> baas) {
		this.baas = baas;
	}
	
	public bookAndAuthor getOne(){
		return one;
	}
	public void setOne(bookAndAuthor one){
		this.one = one;
	}
	public String getName(){
		return Name;
	}
	public void setName(String Name){
		this.Name = Name;
	}
	public String getISBN(){
		return ISBN;
	}
	public void setISBN(String ISBN){
		this.ISBN = ISBN;
	}
	///////////////////////////
	public String addMenu(){
		return "add";
	}
	public String searchMenu(){
		return "search";
	}
	/////////////////////////////
	public String updateMenu()throws Exception{
		one = baam.showMore(ISBN);
		return "updateInput";
	}
	
	/////////////////////////////////
	public String indexAll()throws Exception{
		baas = baam.searchBook("");
		return "index_success";
	}
	
	public String searchByAuthor()throws Exception{
		baas = baam.searchBook(Name);
		return "search_success";
	}
	public String add(){
		if(baam.addBookAndAuthor(one)>0){
			return "add_success";
		}else{
			return "add_error";
		}
	}
	public String update()throws Exception{
		if(baam.updateBook(one)>0){
			return "update_success";
		}else{
			return "update_error";
		}
	}
	public String delete()throws Exception{
		if(baam.deleteById(ISBN)>0){
			return "delete_success";
		}else{
			return "delete_error";
		}
	}
	public String showMoreInfo()throws Exception{
		one = baam.showMore(ISBN);
		return "show_success";
	}
}