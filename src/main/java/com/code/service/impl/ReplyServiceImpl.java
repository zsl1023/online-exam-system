package com.code.service.impl;

import com.code.dao.ReplyMapper;
import com.code.model.Reply;
import com.code.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService {

    @Autowired
    private ReplyMapper replyMapper;

    @Override
    public int addReply(Reply reply) {
        return replyMapper.insertReply(reply);
    }

    @Override
    public List<Reply> getReliesByPostId(int postId) {
        return replyMapper.getReliesByPostId(postId);
    }
}
