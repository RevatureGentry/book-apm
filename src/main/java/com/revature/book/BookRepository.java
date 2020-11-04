package com.revature.book;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author William Gentry
 */
public interface BookRepository extends JpaRepository<Book, Integer> {

  List<Book> findByAuthorId(int authorId);
}
