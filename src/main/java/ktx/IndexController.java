package ktx; /**
 * Created by kimhyewon on 2017. 5. 21..
 */



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class IndexController {
    @GetMapping("/")
    public String index(Model m) {
        m.addAttribute("someAttribute", "someValue");
        return "index";
    }


    @RequestMapping("/hello")
    public String hello(Model model, @RequestParam(value="name", required=false) String name) {
        model.addAttribute("greeting", "안녕하세"+name);
        return "hello";
    }

    @RequestMapping("/search")
    public String search(Model model) {
//        model.addAttribute("greeting", "안녕하세"+name);
        return "search";
    }

    @RequestMapping("/schedule")
    public String schedule(Model model) {
//        model.addAttribute("greeting", "안녕하세"+name);
        return "schedule";
    }



    @RequestMapping("/reservation")
    public String reservation(Model model) {
//        model.addAttribute("greeting", "안녕하세"+name);
        return "reservation";
    }

    @RequestMapping("/selectMovieTheaterDateTime")
    public String selectMovieTheaterDateTime(Model model) {
//        model.addAttribute("greeting", "안녕하세"+name);
        return "selectMovieTheaterDateTime";
    }

    @RequestMapping("/selectSeat")
    public String selectSeat(Model model,  @RequestParam(value="movie", required=false) String movie,
                             @RequestParam(value="theater", required=false) String theater,
                             @RequestParam(value="date", required=false) String date,
                             @RequestParam(value="time", required=false) String time,
                             @RequestParam(value="room", required=false) String room) {
        model.addAttribute("movie", movie);
        model.addAttribute("theater", theater);
        model.addAttribute("date", date);
        model.addAttribute("time", time);
        model.addAttribute("room", room);
        return "selectSeat";
    }

    @RequestMapping("/cancelReservation")
    public String cancelReservation(Model model) {
//        model.addAttribute("greeting", "안녕하세"+name);
        return "cancelReservation";
    }

    @RequestMapping("/successReservation")
    public String successReservation(Model model) {

        return "successReservation";
    }

}
