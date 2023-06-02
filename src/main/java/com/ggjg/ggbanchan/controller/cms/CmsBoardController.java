package com.ggjg.ggbanchan.controller.cms;

import com.ggjg.ggbanchan.model.Board;
import com.ggjg.ggbanchan.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CmsBoardController {

    @Autowired
    BoardService boardSvc;


    @GetMapping("/cms/board/typeList")
    public String boardType() {
        return "/cms/board/typeList";
    }


    @GetMapping("/cms/board/saveTypeList")
    public String saveBoardType() {
        return "/cms/board/saveTypeList";
    }

    @PostMapping("/cms/board/saveTypeList")
    public String saveTypeList(Board board) {
        boardSvc.saveTypeList(board);
        return "redirect:../board/typeList";
    }


    @GetMapping("/cms/board/introList")
    public String introList() {

        return "/cms/board/introList";
    }

    @GetMapping("/cms/board/insIntro")
    public String insIntro() {
        return "/cms/board/insIntro";
    }

    @PostMapping("/cms/board/insIntro")
    public String insIntro(Board board) {
        boardSvc.saveIntro(board);
        return "redirect:../board/introList";
    }
}

