package com.liwen.wprogram.question.service;

import com.liwen.wprogram.question.mapper.QuestionMapper;
import com.liwen.wprogram.question.model.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService {
    @Autowired
    private QuestionMapper questionMapper;

    public Question getQuestion(Long id){
        return questionMapper.selectByPrimaryKey(id);
    }

    /**
     *
     * @param type 0.我发起的，1.我参与的
     * @return 数据列表
     */
    public List<Question> getQuestions(long userid,byte type)
    {
        return questionMapper.selectByTypeKey(userid,type);
    }

    public int saveQuestion(Question question)
    {
        return  questionMapper.insert(question);
    }



}
