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
package bizo.admin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import bizo.admin.service.MemberService;
import bizo.common.vo.MemberVo;
import bizo.common.vo.ReturnVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.bind.annotation.CommandMap;

/**
 * @Class Name : memberDao.java
 * @Description : memberDao DAO Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2014.10.04           최초생성
 *
 * @author lgs479
 * @since 2014.10.04
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
@Service("adminMemberService")
public class MemberServiceImpl extends EgovAbstractServiceImpl implements MemberService {

	private static final Logger LOGGER = LoggerFactory.getLogger(MemberServiceImpl.class);

	// TODO mybatis 사용
    @Resource(name="adminMemberMapper")
	private MemberMapper memberMapper;

	@Override
	public ReturnVO selectMemberList(MemberVo vo) throws Exception {
		List list = memberMapper.selectMemberList(vo);
		Integer totalCount = 0;
		if(list != null && list.size() > 0)
			totalCount = (Integer)memberMapper.selectMemberListCnt(vo);
		
		ReturnVO rVo = new ReturnVO();
		rVo.setList(list);
		rVo.setTotalCount(totalCount);
		return rVo;	
	}

	/**
	 * 회원을 승인 또는 반려 한다.
	 * @param memberVo
	 * @return
	 * @throws Exception
	 */
	@Override
	public int acceptMember(MemberVo memberVo) throws Exception {
		return memberMapper.acceptMember(memberVo);
	}

	/**
	 * 회원을 조회 한다.
	 * @param memberVo
	 * @return
	 * @throws Exception
	 */
	@Override
	public EgovMap selectMember(MemberVo memberVo) throws Exception {
		return memberMapper.selectMember(memberVo);
	}

	/**
	 * 회원 정보를 삭제 한다.
	 * @param memberVo
	 * @return
	 * @throws Exception
	 */
	@Override
	public int deleteMember(MemberVo memberVo) throws Exception {
		return memberMapper.deleteMember(memberVo);
	}
}
