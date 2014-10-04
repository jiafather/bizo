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
package bizo.client.service;

import java.util.HashMap;

import bizo.client.service.impl.MemberVo;



public interface MemberService {

	/**
	 * 멤버가 존재 하는지 id로 조회 한다.
	 * @param memberVo
	 * @return 존재하면 1 아니면 0
	 */
    int selectIsExistMemberCnt(MemberVo memberVo) throws Exception;
    
    /**
     * 맴버를 등록한다.
     * @param memberVo
     * @return memberNo
     * @throws Exception
     */
    String insertMember(MemberVo memberVo) throws Exception;
    
    /**
     * 멤버 정보를 얻어 온다.
     * @param memberVo
     * @return
     * @throws Exception
     */
    HashMap selectMember(MemberVo memberVo) throws Exception;

}
