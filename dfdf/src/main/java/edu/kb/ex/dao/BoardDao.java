package edu.kb.ex.dao;

import java.util.ArrayList;

import edu.kb.ex.dto.BoardDto;
import edu.kb.ex.dto.ContentDto;

public interface BoardDao {
	
	public ArrayList<BoardDto> boardList(int bType,int page);
	public String boardType(int bType);
	public BoardDto boardContent(int bId);
	public int boardCount(int bType);
	
	public ArrayList<ContentDto> listDao();
	public void writeDao(String bName, String bTitle, String bContent);
	public ContentDto viewDao(int bId);
	public void modifyDao(String bName, String bTitle, String bContent, int bId);
	public ContentDto replyViewDao(String bName, String bTitle, String bContent, int bId);
	public void replyDao(String bName, String bTitle, String bContent, int bId);
	public void replyShapeDao(String bName, String bTitle, String bContent, int bId);
	public void deleteDao(String[] lists);
	public void upHitDao(int parseInt);
	public ArrayList<ContentDto> reviewDao();
	public ArrayList<ContentDto> searchDao(String searchOption, String keyWord);
//	public Object revewDao();
	public ContentDto c_contentDao(int bId);
}
