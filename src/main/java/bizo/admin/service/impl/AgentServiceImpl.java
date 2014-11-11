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

import bizo.admin.service.AgentService;
import bizo.admin.service.MemberService;
import bizo.common.vo.AgentVo;
import bizo.common.vo.CompanyVo;
import bizo.common.vo.MemberVo;
import bizo.common.vo.ReturnVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.psl.dataaccess.util.EgovMap;
 
/**
 * @Class Name : AgentServiceImpl.java
 * @Description : AgentServiceImpl Service Impl
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2014.11.07           최초생성
 *
 * @author lgs479
 * @since 2014.10.04
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
@Service("adminAgentService")
public class AgentServiceImpl extends EgovAbstractServiceImpl implements AgentService {

	private static final Logger LOGGER = LoggerFactory.getLogger(AgentServiceImpl.class);

	// TODO mybatis 사용
    @Resource(name="adminAgentMapper")
	private AgentMapper agentMapper;

	@Override
	public ReturnVO selectCompanyList(CompanyVo vo) throws Exception {
		List list = agentMapper.selectCompanyList(vo);
		Integer totalCount = 0;
		if(list != null && list.size() > 0)
			totalCount = (Integer)agentMapper.selectCompanyListCnt(vo);
		
		ReturnVO rVo = new ReturnVO();
		rVo.setList(list);
		rVo.setTotalCount(totalCount);
		return rVo;	
	}

	@Override
	public ReturnVO selectAgentList(AgentVo vo) throws Exception {
		List list = agentMapper.selectAgentList(vo);
		Integer totalCount = 0;
		if(list != null && list.size() > 0)
			totalCount = (Integer)agentMapper.selectAgentListCnt(vo);
		
		ReturnVO rVo = new ReturnVO();
		rVo.setList(list);
		rVo.setTotalCount(totalCount);
		return rVo;	
	}

}
