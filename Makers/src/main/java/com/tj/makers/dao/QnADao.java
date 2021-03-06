package com.tj.makers.dao;


import java.util.List;

import com.tj.makers.model.QnA;

public interface QnADao {
	public QnA qnaView(int qnum);					// ??Έλ³΄κΈ°
	public List<QnA> qnaList(QnA qna);				// ? μ²΄λ³΄κΈ?(paging),κ²??,?΄ κΈ?λ³΄κΈ°
	public int qnaWrite(QnA qna);					// κΈ??°κΈ?
	public int qnaReply(QnA qna);					// ?΅κΈ??¬κΈ?
	public int qnaModify(QnA qna);					// ?? 
	public int qnaCntUp(int qnum);					// μ‘°ν?μ¦κ?
	public int qnaFin(int qnum);					// ?΅λ³??λ£μ²λ¦?
	public int qnaTrans(int qnum);					// ?΅λ³? ?? κΈ? ?­? (??κ°? λ³?κ²?
	public int qnaDelete(int qnum);					// ?­? 
	public int qnaCnt();							//? μ²? κΈ? κ°μ
	public int qnaChkReply(int qgroup);				// ?΅λ³? ??μ§? ??Έ
	public int qnaSearchCnt(QnA qna);				// κ²??? κΈ? κ°μ
}
