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
package bizo.admin.service;

import egovframework.rte.psl.dataaccess.util.EgovMap;
import bizo.common.vo.AgentVo;
import bizo.common.vo.CompanyVo;
import bizo.common.vo.ReturnVO;
 


public interface AgentService extends BaseService{

    /**
     * 회원사 목록을 조회한다.
     * @param memberVo
     * @return
     * @throws Exception
     */
	ReturnVO selectCompanyList(CompanyVo companyVo) throws Exception;
	ReturnVO selectAgentList(AgentVo agentVo) throws Exception;
	int deleteCompany(CompanyVo companyVo) throws Exception;
	EgovMap selectCompany(CompanyVo companyVo) throws Exception;

}
