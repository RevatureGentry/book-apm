package com.revature.book;

import java.net.URI;
import java.util.*;

import co.elastic.apm.api.ElasticApm;
import co.elastic.apm.api.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author William Gentry
 */
@RestController
@RequestMapping("/book")
public class BookController {

  private final Logger logger = LoggerFactory.getLogger(getClass());
  private final BookService bookService;

  public BookController(BookService bookService) {
    this.bookService = bookService;
  }

  @GetMapping
  public ResponseEntity<List<Book>> findAll(@AuthenticationPrincipal String user) {
    Transaction transaction = ElasticApm.currentTransaction();
    transaction.ensureParentId();
    logger.info("{} attempting to find all books", user);
    return ResponseEntity.ok(bookService.findAll());
  }

  @GetMapping("/{id}")
  public ResponseEntity<Book> findOne(@AuthenticationPrincipal String user, @PathVariable("id") int id) {
    Transaction transaction = ElasticApm.currentTransaction();
    transaction.ensureParentId();
    logger.info("{} attempting to find book with id {}", user, id);
    return ResponseEntity.ok(bookService.findById(id));
  }

  @PostMapping
  public ResponseEntity<Book> save(@AuthenticationPrincipal String user, @RequestBody Book book) {
    Transaction transaction = ElasticApm.currentTransaction();
    transaction.ensureParentId();
    logger.info("{} attempting to save {}", user, book);
    Book created = bookService.save(book);
    return ResponseEntity.created(URI.create(String.format("/book/%d", created.getId()))).build();
  }

  @GetMapping("/author/{id}")
  public ResponseEntity<List<Book>> findByAuthor(@AuthenticationPrincipal String user, @PathVariable("id") int authorId) {
    Transaction transaction = ElasticApm.currentTransaction();
    transaction.ensureParentId();
    logger.info("{} attempting to find books by author {}", user, authorId);
    return ResponseEntity.ok(bookService.findByAuthor(authorId));
  }

  @GetMapping("/genres")
  public ResponseEntity<Set<String>> findAllGenres(@AuthenticationPrincipal String user) {
    Transaction transaction = ElasticApm.currentTransaction();
    transaction.ensureParentId();
    logger.info("{} attempting to find all genres", user);
    return ResponseEntity.ok(bookService.findGenres());
  }
}
