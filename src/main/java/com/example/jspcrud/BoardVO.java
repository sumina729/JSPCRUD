package com.example.jspcrud;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardVO {
	private int seq;
	private String title;
	private String writer;
	private String content;

	private Timestamp regdate;

	public Date getModifydate() {
		return modifydate;
	}

	public void setModifydate(Timestamp modifydate) {
		this.modifydate = modifydate;
	}

	private Timestamp  modifydate;
	private int cnt;
	private String category;

	private String img;

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getCategory() { return category; }

	public void setCategory(String category) { this.category = category; }

}
