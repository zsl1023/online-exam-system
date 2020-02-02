package com.code.service;

import com.code.model.Reply;

import java.util.List;

public interface ReplyService {

    int addReply(Reply reply);

    List<Reply> getReliesByPostId(int postId);
}
