package Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Control.AddressControl;
import Model.dao_Address;
import Objects.Districts;
import Objects.Towns_Wards;

@WebServlet("/pages/address")
public class UsAddress extends HttpServlet { 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		doPost(request, response);
	}
	dao_Address dao = new dao_Address();
	AddressControl address = new AddressControl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String status = request.getParameter("status");
		String id_city = request.getParameter("id_city");
		String id_dictricst = request.getParameter("id_dictricst");

		switch (status) {
		case "district":
			if(id_city != null) {
				Long idCity = Long.parseLong(id_city); 
				String textdictics = "<select id=\"iddistrict\" required onchange=\"load_town_ward(this.value);\" name=\"district\"> <option value=\"\"></option>"; 
				for (Districts ls : address.getListDistricts(idCity)) {
					textdictics += "<option value=\""+ls.getId()+"\">"+ls.getTendaydu()+"</option>";
				}
				textdictics += "</select>"; 
				response.getWriter().println(textdictics);  
			}
			break;
		case "town_ward":
			if(id_dictricst != null) {
				Long idDictricst = Long.parseLong(id_dictricst); 
				String text_town_ward = "<select id=\"idtown_ward\" required onchange=\"showship();\" name=\"town_ward\"> <option value=\"\"></option>";
				for (Towns_Wards ls : address.getListTowns_Wards(idDictricst)) {
					text_town_ward += "<option value=\""+ls.getTenhanhchinh()+"\">"+ls.getTendaydu()+"</option>";
				}
				text_town_ward += "</select>"; 
				response.getWriter().println(text_town_ward);  
			}
			break;
		default:
			break;
		}

	}

}
