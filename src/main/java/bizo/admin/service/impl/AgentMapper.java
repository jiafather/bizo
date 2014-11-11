/*
 * Copyright 2011 MOPAS(Ministry of Public Administration and Security).
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

import bizo.common.vo.AgentVo;
import bizo.common.vo.CompanyVo;
import bizo.common.vo.MemberVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;
 
/**
 * AGENT에 관한 데이터처리 매퍼 클래스
 *
 * @author  lgs479
 * @since 2014.11.07
 * @version 1.0
 * @see <pre>
 *  == 개정이력(Modification Information) ==
 *
 *          수정일          수정자           수정내용
 *  ----------------    ------------    ---------------------------
 *   2014.11.07        lgs479          최초 생성
 *
 * </pre>
 */
@Mapper("adminAgentMapper")
public interface AgentMapper {
	
	int selectAgentListCnt(AgentVo agentVo) throws Exception;
    List<?> selectAgentList(AgentVo agentVo) throws Exception;
    int selectCompanyListCnt(CompanyVo companyVo) throws Exception;
    List<?> selectCompanyList(CompanyVo companyVo) throws Exception;
}
