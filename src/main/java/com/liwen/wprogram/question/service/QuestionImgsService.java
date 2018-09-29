package com.liwen.wprogram.question.service;

import com.liwen.wprogram.question.mapper.QuestionImgsMapper;
import com.liwen.wprogram.question.model.QuestionImgs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class QuestionImgsService {
    @Autowired
    private QuestionImgsMapper questionImgsMapper;


    public int saveQuestionImags(QuestionImgs questionImgs)
    {
        return questionImgsMapper.insert(questionImgs);
    }

    public List<QuestionImgs> getQuestionImagses(String questionid)
    {
       return  questionImgsMapper.selectByQuestionidKey(questionid);
    }

}
