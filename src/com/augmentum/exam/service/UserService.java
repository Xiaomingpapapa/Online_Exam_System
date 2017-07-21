package com.augmentum.exam.service;

import com.augmentum.exam.dao.UserDao;
import com.augmentum.exam.exception.ParameterException;
import com.augmentum.exam.exception.ServiceException;
import com.augmentum.exam.model.User;
import com.augmentum.exam.util.StringUtil;

public class UserService {
    public User login(String userName, String password) throws ParameterException, ServiceException {
        ParameterException parameterException = new ParameterException();

        if (StringUtil.isEmpty(userName)) {
            parameterException.addErrorField("userName", "User Name is required");
        }

        if (StringUtil.isEmpty(password)) {
            parameterException.addErrorField("password", "Password is required");
        }

        if (parameterException.isErrorField()) {
            throw parameterException;
        }

        UserDao userDao = new UserDao();
        User user = userDao.getUserByName(userName);

        if (user == null) {
            throw new ServiceException(1000, "User Name does not exist");
        }

        if (!password.equals(user.getPassword())) {
            throw new ServiceException(1001, "Password is error");
        }

        return user;
    }


}
