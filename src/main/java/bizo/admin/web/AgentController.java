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

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.json.MappingJacksonJsonView;

import bizo.admin.service.AgentService;
import bizo.common.vo.AgentVo;
import bizo.common.vo.CompanyVo;
import bizo.common.vo.MemberVo;

/**
 * @Class Name : AgentController.java
 * @Description : AgentController Controller Class
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

@Controller("adminAgentController")
//@SessionAttributes(types = SampleVO.class)
public class AgentController  extends BaseController{
	
	@Resource MappingJacksonJsonView ajaxView;
	
	@Resource(name="adminAgentService")
	private AgentService agentService;	
	
	
	/**
	 *  회원사 목록으로 이동한다.
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/company.list.do")
	public String goCompanyList(@ModelAttribute("companyVo") CompanyVo companyVo, ModelMap model) throws Exception {
		companyVo.setPagingVal();
		
		List<?> companyList = null;
		rVo = agentService.selectCompanyList(companyVo);
		companyList = rVo.getList();
		companyVo.setTotalCount(rVo.getTotalCount());
		
		model.addAttribute("companyVo", companyVo);
		model.addAttribute("companyList", companyList);		
		return "admin/company/list";
	}		
	
	/**
	 *  에이전트 목록으로 이동한다.
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/agent.list.do")
	public String goAgentList(@ModelAttribute("agentVo") AgentVo agentVo, ModelMap model) throws Exception {
		agentVo.setPagingVal();
		
		List<?> agentList = null;
		rVo = agentService.selectAgentList(agentVo);
		agentList = rVo.getList();
		agentVo.setTotalCount(rVo.getTotalCount());
		
		model.addAttribute("agentVo", agentVo);
		model.addAttribute("agentList", agentList);		
		return "admin/agent/list";
	}
	
	/**
	 * 회원사 상세 화면으로 이동한다.
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/company.detail.do")
	public String goAgentDetail(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		return "admin/agent/detail";
	}	

	@RequestMapping(value = "/admin/company.delete.do")
	public View delCompanyl(@ModelAttribute("companyVo") CompanyVo companyVo, ModelMap model) throws Exception {
		if(companyVo.getCompCode() != null){
			companyVo.setUseYn("N");//삭제
			int deleteCnt = agentService.deleteCompany(companyVo);
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
	
	

}
