package kr.ac.hansung.cse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CreditsController {

    // CreditsService 빈을 의존성 주입받음.
    @Autowired
    private CreditsService creditsService;

    @GetMapping("/credits")
    public String showCredits(Model model) {
        // creditsService의 getCreditsPerSemester메서드를 통해 학기별 이수 총 학점 정보를 가져옴.
        model.addAttribute("creditsPerSemester", creditsService.getCreditsPerSemester());
        // creditsService의 getTotalCredits메서드를 통해 총 학점 정보를 가져옴.
        model.addAttribute("totalCredits", creditsService.getTotalCredits());
        // credits.html 뷰를 반환
        return "credits";
    }

    @GetMapping("/details")
    public String showDetails(@RequestParam int year, @RequestParam int semester, Model model) {
        // creditsService의 getCourseDetails메서드를 통해 특정 년도와 학기에 해당하는 교과목 레코드들을 가져옴.
        model.addAttribute("courses", creditsService.getCoursesByYearAndSemester(year, semester));
        model.addAttribute("year", year);
        model.addAttribute("semester", semester);
        return "details"; // details.jsp
    }

}
