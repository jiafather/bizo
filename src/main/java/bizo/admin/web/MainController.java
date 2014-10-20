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

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.view.json.MappingJacksonJsonView;

import bizo.client.service.CommonService;
import bizo.client.service.MemberService;
import bizo.client.service.impl.MemberVo;
import egovframework.example.sample.service.SampleVO;

/**
 * @Class Name : MainController.java
 * @Description : MainController Controller Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2014.10.18           최초생성
 *
 * @author 어드민 메인 페이지 컨트롤러
 * @since 2014. 10.03
 * @version 1.0
 * @see
 *
 *  Copyright (C) by DOUBLE WIN All right reserved.
 */

@Controller("adminMainController")
@SessionAttributes(types = SampleVO.class)
public class MainController {

	
	/* 관리자 로그인 화면으로 이동한다.
	 * @param memberVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/go.login.do")
	public String goLogin(@ModelAttribute("memberVo") MemberVo memberVo, ModelMap model) throws Exception {
		return "admin/login";
	}

}
