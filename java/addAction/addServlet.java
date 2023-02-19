package addAction;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.DB.DBConnect;

@MultipartConfig
/**
 * Servlet implementation class addServlet
 */
public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pname = request.getParameter("pname");
		String price = request.getParameter("price");
		String details=request.getParameter("details");
		String ptype = request.getParameter("ptype");
		String pstatus = request.getParameter("pstatus");
		Part part=request.getPart("img");
		
		try{
			Connection con = DBConnect.getCon();
			PreparedStatement ps=con.prepareStatement("insert into products(id,pname,price,ptype,pstatus,img,details) values(?,?,?,?,?,?,?)");
			ps.setString(1, id);
			ps.setString(2, pname);
			ps.setString(3, price);
			ps.setString(4, ptype);
			ps.setString(5, pstatus);
			ps.setString(6, part.getSubmittedFileName());
			ps.setString(7, details);
			ps.executeUpdate();
			
			String path=request.getRealPath("image")+File.separator+"product"+File.separator+part.getSubmittedFileName();
			FileOutputStream fos= new FileOutputStream(path);;
			InputStream is = part.getInputStream();

			byte[] data = new byte[is.available()];

			is.read(data);

			fos.write (data);

			fos.close();
			
			HttpSession httpSession = request.getSession();

			httpSession.setAttribute("message", "Product is added success");
			response.sendRedirect("admin/addproduct.jsp?msg=done");

			return;
			
			
	}catch(Exception e) {
		System.out.println(e);
		response.sendRedirect("admin/addproduct.jsp?msg=wrong");
	}

}
}
