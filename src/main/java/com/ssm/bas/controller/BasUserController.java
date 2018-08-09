package com.ssm.bas.controller;

import com.ssm.bas.service.BasUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ssm.bas.model.BasUser;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class BasUserController {

    @Autowired
    private BasUserService basUserService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public ModelAndView login(String account, String password, ModelAndView mv, HttpSession session) {
        BasUser user =new BasUser();
        user.setName(account);
        user.setPassword(password);
        user = basUserService.selectByParam(user);
        if (user!=null){
            session.setAttribute("user",user);
            mv.setView(new RedirectView("/jsp/showUser.jsp"));
        }else{
            mv.addObject("message","账户或密码错误");
            mv.setViewName("login");
        }
        return mv;
    }

    @RequestMapping(value = "/changePwd",method = RequestMethod.POST)
    public ModelAndView changePwd(HttpServletRequest request, ModelAndView mv) {
        BasUser user =new BasUser();
        user.setName(request.getParameter("userName"));
        user = basUserService.selectByParam(user);
        String password = request.getParameter("password");
        String conPassword = request.getParameter("conPassword");
        if (user!=null && password.equals(conPassword)){
            user.setPhonenum(request.getParameter("phonenum"));
            user.setPassword(password);
            basUserService.updateByPrimaryKeySelective(user);
            mv.setView(new RedirectView("/jsp/login.jsp"));
            mv.addObject("message","修改成功！");
        }else{
            mv.setViewName("updateUser");
            mv.addObject("message","该用户不存在或两次登陆密码不一致！");
        }
        return mv;
    }

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public ModelAndView register(HttpServletRequest request, ModelAndView mv) {
        if (request.getParameter("password")!=request.getParameter("conPassword")){
            BasUser user =new BasUser();
            user.setId(java.util.UUID.randomUUID().toString().replaceAll("-","") );
            user.setPhonenum(request.getParameter("phonenum"));
            user.setName(request.getParameter("userName"));
            user.setPassword(request.getParameter("password"));
            user.setAddress(request.getParameter("address"));
            user.setAge(Integer.parseInt(request.getParameter("age")));
            user.setSex(request.getParameter("sex"));
            user.setCompany(request.getParameter("company"));
            user.setState(0);
            basUserService.insert(user);
            mv.addObject("message","注册成功！");
            mv.setViewName("login");
        }else{
            mv.setViewName("register");
            mv.addObject("message","注册失败，请检查用户数据信息！");
        }
        return mv;
    }
}
