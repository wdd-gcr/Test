package com.baizhi.action;

import com.baizhi.entity.Admin;
import com.baizhi.entity.Supplier;
import com.baizhi.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.annotation.Id;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import javax.validation.constraints.Size;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminAction {

    @Autowired
    private AdminService service;
    //登录
    @RequestMapping("/login")
    public String login(Admin admin, HttpSession session, Model model){
        try {
            service.login(admin,session);
            session.setAttribute("login","Y");
            return "redirect:/supplier.jsp";
        }catch (Exception e){
            String message = e.getMessage();
            model.addAttribute("message",message);
            return "login";
        }
    }
    //展示所有
    @RequestMapping("/querySup")
    @ResponseBody                             //页数
    public Map<String,Object> querySup(Integer page,Integer rows) throws Exception{
        //创建map集合
        Map<String, Object> map = new HashMap<>();
        List<Supplier> list = service.queryCount(page,rows);
        //获取总条数
        Integer count = service.querySup().size();
        //算总页数
        Integer pageCount;
        if(count%rows==0){
            pageCount=count/rows;
        }else{
            pageCount=count/rows+1;
        }
        //设置总页数
        map.put("total",pageCount);
        //当前页数
        map.put("page",page);
        //当前页的数据
        map.put("rows",list);
        //设置总条数
        map.put("records",count);
        return map;
    }
    //增删改
    @RequestMapping("/edit")
    @ResponseBody
    public void edit(String oper,Supplier supplier) throws Exception{
        //添加
        if("add".equals(oper)){
            service.insertSup(supplier);
            //删除
        }else if ("del".equals(oper)){
            service.deleteSup(supplier.getId());
            //修改
        }else if ("edit".equals(oper)) {
            service.updateSup(supplier);
        }
    }

    //搜索
    @RequestMapping("/sousuo")
    public String sousuo(String key,String content,Model model) throws Exception{
        List<Supplier> list = service.queryLike(key, content);
        model.addAttribute("list",list);
        return "index";
    }
    //安全退出
    @RequestMapping("/end")
    public String end(HttpSession session){
        session.invalidate();
        return "login";
    }
}
