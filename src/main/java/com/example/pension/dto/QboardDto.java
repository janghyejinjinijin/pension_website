package com.example.pension.dto;

public class QboardDto {

	private int qnum;
	private String qname;
	private String qtitle;
	private String qcontent;
	private String qphone;
	private String qdate;
	public QboardDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QboardDto(int qnum, String qname, String qtitle, String qcontent, String qphone, String qdate) {
		super();
		this.qnum = qnum;
		this.qname = qname;
		this.qtitle = qtitle;
		this.qcontent = qcontent;
		this.qphone = qphone;
		this.qdate = qdate;
	}
	public int getQnum() {
		return qnum;
	}
	public void setQnum(int qnum) {
		this.qnum = qnum;
	}
	public String getQname() {
		return qname;
	}
	public void setQname(String qname) {
		this.qname = qname;
	}
	public String getQtitle() {
		return qtitle;
	}
	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}
	public String getQphone() {
		return qphone;
	}
	public void setQphone(String qphone) {
		this.qphone = qphone;
	}
	public String getQdate() {
		return qdate;
	}
	public void setQdate(String qdate) {
		this.qdate = qdate;
	}

	
	
	
}
