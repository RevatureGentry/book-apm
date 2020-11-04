package com.revature.book;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

/**
 * @author William Gentry
 */
@Service
public class BookService {

  private final Logger logger = LoggerFactory.getLogger(getClass());
  private final BookRepository bookRepository;

  public BookService(BookRepository bookRepository) {
    this.bookRepository = bookRepository;
  }

  public List<Book> findAll() {
    logger.info("Attempting to find all books!");
    return bookRepository.findAll();
  }

  public Book findById(int id) {
    logger.info("Attempting to find book by id {}", id);
    return bookRepository.findById(id).orElseThrow(() -> new BookNotFoundException(id));
  }

  public Book save(Book book) {
    logger.info("Attempting to save {}", book);
    return bookRepository.save(book);
  }

  public List<Book> findByAuthor(int id) {
    logger.info("Attempting to find books by author {}", id);
    return bookRepository.findByAuthorId(id);
  }

  public Set<String> findGenres() {
    logger.info("Attempting to find genres");
    return bookRepository.findAll().stream().flatMap(book -> book.getGenres().stream()).collect(Collectors.toCollection(TreeSet::new));
  }
}
