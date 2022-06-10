package com.ebc.boot.service;

import com.ebc.boot.entity.EbcUser;
import com.ebc.boot.entity.OnlineMessage;
import com.ebc.boot.json.LayUiTableJSON;
import com.ebc.boot.mapper.EbcUserMapper;
import com.ebc.boot.mapper.OnlineMessageMapper;
import com.ebc.boot.utils.MD5Utils;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


/**
 * @author k
 * Introduction :
 */

@Service
public class EbcUserServiceImpl implements EbcUserService {

    @Autowired
    private EbcUserMapper ebcUserMapper;
    @Autowired
    private OnlineMessageMapper messageMapper;

    @Override
    public EbcUser selectByUsername(String username) {
        return ebcUserMapper.selectByUsername(username);
    }

    @Override
    public boolean getAllUsers(String username) {
        return ebcUserMapper.getAllUsers().contains(username);
    }

    @Override
    public LayUiTableJSON getAllUsers() {
        List<EbcUser> list = ebcUserMapper.getAllUser();
        list.forEach(System.out::println);
        return LayUiTableJSON.getJSON(list.size(),list);
    }

    @SneakyThrows //在这里不显示异常，controller会显示
    public boolean toCheckLogin(String username, String password, HttpServletRequest request) {
        EbcUser ebcUser = ebcUserMapper.selectByUsername(username);
        password = MD5Utils.getPasswdMd5(password);
        if (ebcUser != null && ebcUser.getPassword().equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("user",ebcUser);
            return true;
        }
        return false;
    }

    @Override
    public int saveUsers(EbcUser ebcUser) {
        ebcUser.setNickname(ebcUser.getUsername());
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        ebcUser.setRDate(sf.format(date));
        ebcUser.setR("0");
        ebcUser.setI("0");
        ebcUser.setE("0");
        ebcUser.setImgV("0");
        ebcUser.setW("0");
        return ebcUserMapper.insert(ebcUser);
    }

    @Override
    public int saveOnlineMessage(HttpServletRequest request) {
        HttpSession session = request.getSession();
        EbcUser ebcUser = (EbcUser) session.getAttribute("user");
        OnlineMessage message = new OnlineMessage();
        message.setUsername(ebcUser.getUsername());
        message.setTitle(request.getParameter("onTitle"));
        message.setEmail(request.getParameter("onEmail"));
        message.setState("0");
        message.setTextArea(request.getParameter("textMsg"));
        return messageMapper.insert(message);
    }


}
