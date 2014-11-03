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

import org.apache.commons.collections.OrderedMap;

import egovframework.example.sample.service.SampleVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.bind.annotation.CommandMap;
import bizo.common.vo.MemberVo;
import bizo.common.vo.ReturnVO;



public interface MemberService {

    /**
     * 회원 목록을 조회한다.
     * @param memberVo
     * @return
     * @throws Exception
     */
	ReturnVO selectMemberList(MemberVo memberVo) throws Exception;

	/**
	 * 회원을 승인 또는 반려 한다.
	 * @param memberVo
	 * @return
	 * @throws Exception
	 */
	int acceptMember(MemberVo memberVo) throws Exception;

	/**
	 * 회원 정보를 리턴한다.
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	EgovMap selectMember(MemberVo memberVo) throws Exception;
	
	/**
	 * 회원을 삭제 한다.
	 * @param memberVo
	 * @return
	 * @throws Exception
	 */
	int deleteMember(MemberVo memberVo) throws Exception;
	
}
