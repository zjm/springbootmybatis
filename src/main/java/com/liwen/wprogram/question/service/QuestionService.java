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

    public Question getQuestion(String id){
        return questionMapper.selectByPrimaryKey(id);
    }

    /**
     *
     * @param type 0.我发起的，1.我参与的
     * @return 数据列表
     */
    public List<Question> getQuestions(String userid,byte type)
    {
        return questionMapper.selectByTypeKey(userid,type);
    }


    public int saveQuestion(Question question)
    {
        return  questionMapper.insert(question);
    }

    public int updateQuestion(Question question)
    {
        return  questionMapper.updateByPrimaryKey(question);
    }

    public void delQuestion(String id)
    {
        questionMapper.deleteByPrimaryKey(id);
    }

//    public List<QuestionRolling> getRollingQuestions(byte status){
//      return   questionMapper.selectRollingQuesrtionByUserIdKey(status);
//    }



}
