package bizo.common.vo;




public class CommonModel {

	//기본 검색관련 변수
	private String dateType;//날짜타입?
	private String searchType;//검색타입
	private String searchText;//검색내용
	private String processKind;//업무성격
	private String startDate;//시작일
	private String endDate;//종료일
	 
	//등록, 수정자 이름
	private String regUserName;
	private String uptUserName;
	
	//업데이트 여부
	private String isUpdate;
	//답글 여부
	private String isReply;
	
	//게시판 페이징 관련 변수
	private Integer totalCount;
	private Integer rowSize=10;
	private Integer pageGroupSize=10;
	private Integer currentPageIndex=1;
	private Integer totPageSize=0;
	
	private Integer startIdx;
	private Integer endIdx=rowSize;
	
	public String getDateType() {
		return dateType;
	}
	public void setDateType(String dateType) {
		this.dateType = dateType;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getProcessKind() {
		return processKind;
	}
	public void setProcessKind(String processKind) {
		this.processKind = processKind;
	}
	public String getSearchText() {
		return searchText;
	}
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getRegUserName() {
		return regUserName;
	}
	public void setRegUserName(String regUserName) {
		this.regUserName = regUserName;
	}
	public String getUptUserName() {
		return uptUserName;
	}
	public void setUptUserName(String uptUserName) {
		this.uptUserName = uptUserName;
	}
	public String getIsUpdate() {
		return isUpdate;
	}
	public void setIsUpdate(String isUpdate) {
		this.isUpdate = isUpdate;
	}
	public String getIsReply() {
		return isReply;
	}
	public void setIsReply(String isReply) {
		this.isReply = isReply;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		
		if(totalCount == 0) {
			totPageSize=1; return;
		}
		this.totalCount = totalCount;
		this.totPageSize = (int) totalCount/rowSize;
		if(totalCount%rowSize>0){
			totPageSize += 1;
		}
	}
	public Integer getCurrentPageIndex() {
		if(currentPageIndex==null || "".equals(currentPageIndex)){
			return 1;
		}else{
			return currentPageIndex;
		}
	}
	public void setCurrentPageIndex(Integer currentPageIndex) {
		this.currentPageIndex = currentPageIndex;
	}	
	public Integer getRowSize() {
		return rowSize;
	}
	public void setRowSize(Integer rowSize) {
		this.rowSize = rowSize;
		this.endIdx = rowSize;
	}
	public Integer getPageGroupSize() {
		return pageGroupSize;
	}
	public void setPageGroupSize(Integer pageGroupSize) {
		this.pageGroupSize = pageGroupSize;
	}
	public Integer getStartIdx() {
		return startIdx;
	}
	public void setStartIdx(Integer startIdx) {
		this.startIdx = (currentPageIndex-1)*rowSize;
	}
	public Integer getEndIdx() {
		return endIdx;
	}
	public void setEndIdx(Integer endIdx) {
		this.endIdx = endIdx;
	}
	public void setPagingVal() {
		setStartIdx(0);
	}
	public Integer getTotPageSize() {
		return totPageSize;
	}
	public void setTotPageSize(Integer totPageSize) {
		this.totPageSize = totPageSize;
	}

}
