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

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.collections.OrderedMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.json.MappingJacksonJsonView;
 
import bizo.admin.service.MemberService;
import bizo.common.vo.MemberVo;
import egovframework.example.sample.service.SampleVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.bind.annotation.CommandMap;

/**
 * @Class Name : MemberController.java
 * @Description : MemberController Controller Class
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

@Controller("adminMemberController")
@SessionAttributes(types = SampleVO.class)
public class MemberController extends BaseController{

	@Resource MappingJacksonJsonView ajaxView;
	
	@Resource(name="adminMemberService")
	private MemberService memberService;
	
	/**
	 *  멤버 관리 화면으로 이동한다.
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/member.list.do")
	public String goMemberList(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		memberVo.setPagingVal();
		
		List<?> memberList = null;
		rVo = memberService.selectMemberList(memberVo);
		memberList = rVo.getList();
		memberVo.setTotalCount(rVo.getTotalCount());
		
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("memberList", memberList);
		return "admin/member/list";
	}
	
	/**
	 * 회원 상세
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/member.detail.do")
	public String goMemberDetail(@RequestParam(value="memberNo", required=true) String memberNo,  @ModelAttribute("memberVo") MemberVo vo, ModelMap model) throws Exception {
		EgovMap memberVo = memberService.selectMember(vo);
		
		//memberNo
		model.addAttribute("memberVo", memberVo);
		return "admin/member/detail";
	}
	
	/**
	 * 회원을 낼름 탈퇴 시킨다.
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/member.delete.do")
	public View goMemberAccept(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		
		if(memberVo.getMemberNo() != null){
			memberVo.setUseFlag("N");//삭제
			int deleteCnt = memberService.deleteMember(memberVo);
			if(deleteCnt==1){//삭제 성공
				model.addAttribute("isok", "ok");
			}else{//삭제 오류
				model.addAttribute("isok", "no");
			}
		}else{
			model.addAttribute("isok", "no");
		}
		
		return ajaxView;
	}
	
	/**
	 * 회원 탈퇴 목록
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/member.quitList.do")
	public String goQuitList(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		memberVo.setPagingVal();
		memberVo.setUseFlag("N");//삭제된 리스트만 조회 한다.
		
		List<?> memberList = null;
		rVo = memberService.selectMemberList(memberVo);
		memberList = rVo.getList();
		memberVo.setTotalCount(rVo.getTotalCount());
		
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("memberList", memberList);
		return "admin/member/quitList";
	}
	
	/**
	 * 회원을 복구 시킨다.
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/member.returnmember.do")
	public View returnMember(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		
		if(memberVo.getMemberNo() != null){
			memberVo.setUseFlag("Y");//회원을 원복 시킨다.
			int deleteCnt = memberService.deleteMember(memberVo);
			if(deleteCnt==1){//복귀 성공
				model.addAttribute("isok", "ok");
			}else{//복귀 오류
				model.addAttribute("isok", "no");
			}
		}else{
			model.addAttribute("isok", "no");
		}
		
		return ajaxView;
	}
}
