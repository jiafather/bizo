/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package bizo.common.vo;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * @Class Name : MemberVo.java
 * @Description : MemberVo Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2014.10.04           최초생성
 *
 * @author lgs479
 * @since 2014. 10.04
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class MemberVo  extends CommonModel  implements Serializable {

	String memberId;
	String memberNo;	
	String memberName;	
	String password;	
	String birthday;	
	String sex;		
	String post;		
	String addr1;		
	String addr2;		
	String mobile1;		
	String mobile2;		
	String mobile3;
	String state; 
	String stateNm;
	String email;		
	String emailYn = "N";	
	String smsServiceYn = "N";	
	String ownNameYn = "N";	
	String lastLoginTime;	
	String nickname;	
	String mobileCom;	
	String confirmYn;	
	String insertDatetime;	
	String insertId;	
	String updateDatetime;	
	String modifyId;	
	String useFlag="Y";	
	String compCode;	
	String agtCode;
	String quitTime;

    public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getMobile1() {
		return mobile1;
	}

	public void setMobile1(String mobile1) {
		this.mobile1 = mobile1;
	}

	public String getMobile2() {
		return mobile2;
	}

	public void setMobile2(String mobile2) {
		this.mobile2 = mobile2;
	}

	public String getMobile3() {
		return mobile3;
	}

	public void setMobile3(String mobile3) {
		this.mobile3 = mobile3;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	public String getStateNm() {
		return stateNm;
	}
	
	public void setStateNm(String stateNm) {
		this.stateNm = stateNm;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmailYn() {
		return emailYn;
	}

	public void setEmailYn(String emailYn) {
		this.emailYn = emailYn;
	}

	public String getSmsServiceYn() {
		return smsServiceYn;
	}

	public void setSmsServiceYn(String smsServiceYn) {
		this.smsServiceYn = smsServiceYn;
	}

	public String getOwnNameYn() {
		return ownNameYn;
	}

	public void setOwnNameYn(String ownNameYn) {
		this.ownNameYn = ownNameYn;
	}

	public String getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(String lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getMobileCom() {
		return mobileCom;
	}

	public void setMobileCom(String mobileCom) {
		this.mobileCom = mobileCom;
	}

	public String getConfirmYn() {
		return confirmYn;
	}

	public void setConfirmYn(String confirmYn) {
		this.confirmYn = confirmYn;
	}

	public String getInsertDatetime() {
		return insertDatetime;
	}

	public void setInsertDatetime(String insertDatetime) {
		this.insertDatetime = insertDatetime;
	}

	public String getInsertId() {
		return insertId;
	}

	public void setInsertId(String insertId) {
		this.insertId = insertId;
	}

	public String getUpdateDatetime() {
		return updateDatetime;
	}

	public void setUpdateDatetime(String updateDatetime) {
		this.updateDatetime = updateDatetime;
	}

	public String getModifyId() {
		return modifyId;
	}

	public void setModifyId(String modifyId) {
		this.modifyId = modifyId;
	}

	public String getUseFlag() {
		return useFlag;
	}

	public void setUseFlag(String useFlag) {
		this.useFlag = useFlag;
	}

	public String getCompCode() {
		return compCode;
	}

	public void setCompCode(String compCode) {
		this.compCode = compCode;
	}

	public String getAgtCode() {
		return agtCode;
	}

	public void setAgtCode(String agtCode) {
		this.agtCode = agtCode;
	}

	public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }

	public String getQuitTime() {
		return quitTime;
	}

	public void setQuitTime(String quitTime) {
		this.quitTime = quitTime;
	}
	
}
