package com.tnt.cont;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.tnt.dao.TourDao;
import com.tnt.model.Tour;

/**
 * Servlet implementation class CreatePackage
 */
@WebServlet(urlPatterns = "/Admin/CreatePackage", initParams = {
		@WebInitParam(name = "saveDir", value = "D:/FileUpload"),
		@WebInitParam(name = "allowedTypes", value = "jpg,jpeg,gif,png") })
public class CreatePackage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		response.setContentType("text/html");
		Tour t = new Tour();
		TourDao T = TourDao.getTourDao();
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		PrintWriter out = response.getWriter();
		String path = new String();
		if (isMultipart) {
			FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
				List<?> items = upload.parseRequest(request);
				String Name = "";
				Iterator<?> iterator = items.iterator();
				while (iterator.hasNext()) {
					FileItem item = (FileItem) iterator.next();
					if (!item.isFormField()) {
						String fileName = item.getName();
						if (fileName != "") {
							String root;
//							root = getServletContext().getRealPath("/");
							root = getInitParameter("saveDir");
							File savePath = new File(root + File.separator + Name);
							if (!savePath.exists()) {
								boolean status = savePath.mkdirs();
								if (status) {
									System.out.println("Directory Made");
								} else {
									System.out.println("Error in making Directory");
								}
							}
							String FileName = System.currentTimeMillis() + ".jpg";
							File uploadedFile = new File(savePath + File.separator + FileName);
							path = uploadedFile.getAbsolutePath();
							item.write(uploadedFile);
							out.println("Success");
						} else
							out.println("Failed");

					} else {
						switch (item.getFieldName()) {
						case "packageName":
							Name = item.getString();
							t.setPackageName(Name);
							break;
						case "packageType":
							t.setPackageType(item.getString());
							break;
						case "packageLocation":
							t.setPackageLocation(item.getString());
							break;
						case "from":
							t.setFrom((Date) sdf.parse(item.getString()));
							break;
						case "to":
							t.setTo((Date) sdf.parse(item.getString()));
							break;
						case "packagePrice":
							t.setPackagePrice(Integer.parseInt(item.getString()));
							break;
						case "packageFeatures":
							t.setPackageFeatures(item.getString());
							break;
						case "packageDetails":
							t.setPackageDetails(item.getString());
							break;
						case "submit":
							break;
						default:
							throw new IllegalArgumentException("Unexpected value: " + item.getFieldName());
						}
					}
				}
				t.setPackageImage(path);
				T.create(t);
			} catch (FileUploadException e) {
				out.println(e);
			} catch (Exception e) {
				out.println(e);
			}
		} else {
			out.println("Not Multipart");
		}
	}

}
