package org.miniproject.services.book;

import org.miniproject.dao.book.IBookDao;
import org.miniproject.dao.book.BookDaoImpl;
import org.miniproject.models.Book;

import java.util.List;

public class BookServiceImpl implements IBookService {
    private IBookDao bookDao = new BookDaoImpl();
    @Override
    public void save(Book book) {
        bookDao.save(book);
    }

    @Override
    public void update(Book book) {
        bookDao.update(book);
    }

    @Override
    public void delete(Integer id) {
        bookDao.delete(id);
    }

    @Override
    public Book findById(Integer id) {
        return bookDao.findById(id);
    }

    @Override
    public List<Book> findAll() {
        return bookDao.findAll();
    }
}
