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
package bizo.client.service.impl;

import java.util.HashMap;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import bizo.client.service.MemberService;
import egovframework.example.sample.service.SampleVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

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
@Service("memberService")
public class MemberServiceImpl extends EgovAbstractServiceImpl implements MemberService {

	private static final Logger LOGGER = LoggerFactory.getLogger(MemberServiceImpl.class);

	/** SampleDAO */
	// TODO ibatis 사용
//	@Resource(name="memberDao")
//	private MemberDAO memberDao;
	
	// TODO mybatis 사용
    @Resource(name="memberMapper")
	private MemberMapper memberMapper;

    /** ID Generation */
    @Resource(name="egovIdGnrService")
    private EgovIdGnrService egovIdGnrService;
    
	/**
	 * 멤버가 존재 하는지 id로 조회 한다.
	 * @param memberVo
	 * @return 존재하면 1 아니면 0
	 */
    public int selectIsExistMemberCnt(MemberVo memberVo) throws Exception{
		return memberMapper.selectIsExistMemberCnt(memberVo);
	}
 
	/**
	 * 멤버를 등록 한다.
	 * @param memberVo
	 * @return memberNo
	 */
    public String insertMember(MemberVo vo) throws Exception {
    	LOGGER.debug(vo.toString());

    	/** ID Generation Service */
 //   	String memberNo = egovIdGnrService.getNextStringId();
 // 	vo.setMemberNo(memberNo);
 //   	LOGGER.debug(vo.toString());

    	memberMapper.insertMember(vo);
        return vo.getMemberNo();
    }

	@Override
	public HashMap selectMember(MemberVo vo) throws Exception {
		return memberMapper.selectMember(vo);
	}

}
