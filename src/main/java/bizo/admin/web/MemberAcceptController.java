package bizo.admin.web;

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

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import bizo.common.vo.MemberVo;
import egovframework.example.sample.service.SampleVO;

/**
 * @Class Name : MemberAcceptController.java
 * @Description : MemberAcceptController Controller Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2014.10.21           최초생성
 *
 * @author 회원 목록 
 * @since 2014. 10.21
 * @version 1.0
 * @see
 *
 *  Copyright (C) by DOUBLE WIN All right reserved.
 */

@Controller("adminMemberAcceptController")
@SessionAttributes(types = SampleVO.class)
public class MemberAcceptController {

	
	/**
	 *  회원 승인 관리 화면으로 이동한다.
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/member.acceptList.do")
	public String goMemberAcceptList(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		return "admin/member/acceptList";
	}
	
	/**
	 * 회원 승인 관리 상세 화면으로 이동한다.
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/member.accept.detail.do")
	public String goMemberAcceptDetail(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		return "admin/member/acceptDetail";
	}

}
