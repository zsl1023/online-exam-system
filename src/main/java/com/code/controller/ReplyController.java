package com.code.controller;

import com.code.dto.AjaxResult;
import com.code.model.Reply;
import com.code.service.ReplyService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/reply")
public class ReplyController {

    private static Log LOG = LogFactory.getLog(ReplyController.class);

    @Autowired
    private ReplyService replyService;

    //添加回复
    @RequestMapping(value="/api/addReply", method= RequestMethod.POST)
    @ResponseBody
    public AjaxResult addReply(@RequestBody Reply reply) {
        AjaxResult ajaxResult = new AjaxResult();
        int replyId = replyService.addReply(reply);
        return new AjaxResult().setData(replyId);
    }
}
