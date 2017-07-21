package com.augmentum.exam.service;

import com.augmentum.exam.dao.QuestionDao;
import com.augmentum.exam.model.Question;

public class QuestionService {
    public int saveQuestion(Question question) {
        QuestionDao questionDao = new QuestionDao();
        questionDao.save();
        return question.getId();
    }

}
