package sec;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Std")
public class Std extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Std() {
        super();

    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter in = response.getWriter();
		
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		int birth = Integer.parseInt(request.getParameter("birth"));
		
		
		if(age>=20) {
			in.println("성인입니다.");
		} else {
			in.println("미성년자입니다.");
		} 
		in.println("저의 이름은 "+name+"이며, "+"나이는 "+age+"세이고, "+"출생은 "+birth+"년입니다.");
	}

}
