package com.example.pension.dto;

public class BoardDto {
	
	private int rnum;
	private String ruser;
	private String rname;
	private String rcontent;
	private String rscore;
	private String rvdate;
	public BoardDto() {
	
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardDto(int rnum, String ruser, String rname, String rcontent, String rscore, String rvdate) {
		super();
		this.rnum = rnum;
		this.ruser = ruser;
		this.rname = rname;
		this.rcontent = rcontent;
		this.rscore = rscore;
		this.rvdate = rvdate;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getRuser() {
		return ruser;
	}
	public void setRuser(String ruser) {
		this.ruser = ruser;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public String getRscore() {
		return rscore;
	}
	public void setRscore(String rscore) {
		this.rscore = rscore;
	}
	public String getRvdate() {
		return rvdate;
	}
	public void setRvdate(String rvdate) {
		this.rvdate = rvdate;
	}
	
	
	
	
	
	
	
}
