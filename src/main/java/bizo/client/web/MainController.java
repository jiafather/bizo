package bizo.client.web;

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

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.json.MappingJacksonJsonView;

import bizo.client.service.MemberService;
import bizo.client.service.impl.MemberVo;
import egovframework.example.sample.service.EgovSampleService;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

/**
 * @Class Name : EgovSampleController.java
 * @Description : EgovSampleController Controller Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2014.10.03           최초생성
 *
 * @author 메인 페이지 컨트롤러
 * @since 2014. 10.03
 * @version 1.0
 * @see
 *
 *  Copyright (C) by DOUBLE WIN All right reserved.
 */

@Controller
@SessionAttributes(types = SampleVO.class)
public class MainController {

	@Resource MappingJacksonJsonView ajaxMainView;

	@Resource(name = "memberService")
	private MemberService memberService;
	
	/** EgovSampleService */
	@Resource(name = "sampleService")
	private EgovSampleService sampleService;
	
	/**
	 * 로그인 화면으로 이동한다.
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/login/go.do")
	public String goLogin(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		return "client/login";
	}
	
	/**
	 * 회원 가입 화면으로 이동한다.
	 * @param searchVO
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/join/go.do")
	public String goJoin(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		return "client/join/join";
	}
	
	/**
	 * 회원을 등록한다.
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/join/reg.do", method = RequestMethod.POST)
	public String regMember(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		
		String memberNo = memberService.insertMember(memberVo);
		
		return "redirect:/join/joinok.do";
	}
	
	/**
	 * 회원 가입 성공 페이지로 이동한다.
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/join/joinok.do")
	public String goJoinOk(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		return "client/join/joinOk";
	}
	
	/**
	 * 아이디 중복체크를 실행한다.
	 * @param memberVo
	 * @param model
	 * @return 아이디가 존재하면 1 없으면 0
	 * @throws Exception
	 */
	@RequestMapping(value = "/join/selectIsExistMemberCnt.do")
	public View selectIsExistMemberCnt(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		
		int cnt = memberService.selectIsExistMemberCnt(memberVo);
		model.addAttribute("cnt", cnt);
		
		return ajaxMainView;
	}
	
	/**
	 * 로그인을 실행한다.
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/login/do.do")
	public View doLogin(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		
		//회원 정보를 조회 한다.
		HashMap memberMap = memberService.selectMember(memberVo);
		
		int cnt = memberService.selectIsExistMemberCnt(memberVo);
		
		model.addAttribute("cnt", cnt);
		if(memberMap!=null)
			model.addAttribute("isok", "ok");
		else
			model.addAttribute("isok", "no");
		return ajaxMainView;
	}
	

}
