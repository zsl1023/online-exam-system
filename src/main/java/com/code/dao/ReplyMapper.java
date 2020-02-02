package com.code.dao;

import com.code.model.Reply;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface ReplyMapper {

    int insertReply(@Param("reply") Reply reply);

    List<Reply> getReliesByPostId(@Param("postId") int postId);
}
