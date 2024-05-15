package AEPL_TEST1.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import AEPL_TEST1.dao.userDao;
import AEPL_TEST1.dto.userDto;

@Controller
public class userController {

	@Autowired
	userDao UserDao;

	@RequestMapping("/insert")
	@ResponseBody
	public String insert(@ModelAttribute userDto userDto) {
		UserDao.insert(userDto);
		return "registration done successfully";
	}

}