package com.sut.jb.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/klls")
@Controller
@RooWebScaffold(path = "klls", formBackingObject = Kll.class)
public class KllController {
}
