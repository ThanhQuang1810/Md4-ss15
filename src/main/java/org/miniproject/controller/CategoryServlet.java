package org.miniproject.controller;

import org.miniproject.models.Category;
import org.miniproject.services.category.ICategoryService;
import org.miniproject.services.category.CategoryServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/categories")
public class CategoryServlet extends HttpServlet {
    private ICategoryService categoryService = new CategoryServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action != null){
            switch (action){
                case "details":
                    // Xử lý tạo mới category
                    Integer idDetails = Integer.valueOf(req.getParameter("id"));
                    req.setAttribute("category", categoryService.findById(idDetails));
                    req.getRequestDispatcher("/views/details-category.jsp").forward(req, res);
                    break;
                case "update":
                    Integer idEdit = Integer.valueOf(req.getParameter("id"));
                    req.setAttribute("category", categoryService.findById(idEdit));
                    req.getRequestDispatcher("/views/edit-category.jsp").forward(req, res);
                    break;
                case "delete":
                    Integer idDel = Integer.valueOf(req.getParameter("id"));
              Category category = categoryService.findById(idDel);
              req.setAttribute("category", category);
                    req.getRequestDispatcher("/views/delete-category.jsp").forward(req, res);
                    break;
                case "list":
                    req.setAttribute("categories", categoryService.findAll());
                    req.getRequestDispatcher("/views/list-category.jsp").forward(req, res);
                    break;
                case "create":
                    req.getRequestDispatcher("/views/add-category.jsp").forward(req, res);
                    break;
                default:
                    res.sendRedirect(req.getContextPath() + "/categories");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action!= null){
            switch (action){
//
                case "create":
                    String name = req.getParameter("name");
                    String statusStr = req.getParameter("status");
                    boolean status = Boolean.parseBoolean(statusStr);
                    Category addCategory = new Category(
                            0,
                            name,
                            status
                    );
                    categoryService.save(addCategory);
                    res.sendRedirect("/categories?action=list");
                    break;
                case "update":
                    Integer idUpdate = Integer.parseInt(req.getParameter("id"));
                    String nameUpdate = req.getParameter("name");
                    String statusUpdateStr = req.getParameter("status");
                    boolean statusUpdate = Boolean.parseBoolean(statusUpdateStr);
                    Category updateCategory = new Category(
                            idUpdate,
                            nameUpdate,
                            statusUpdate
                    );
                    categoryService.update(updateCategory);
                    res.sendRedirect("/categories?action=list");
                    break;
                case "delete":
                    Integer idDelete = Integer.parseInt(req.getParameter("id"));
                    categoryService.delete(idDelete);
                    res.sendRedirect("/categories?action=list");
                    break;
                default:
                    res.sendRedirect(req.getContextPath() + "/categories");
            }
        }
    }
}
