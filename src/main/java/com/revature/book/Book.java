package com.revature.book;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.StringJoiner;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

/**
 * @author William Gentry
 */
@Entity
public class Book {

  @Id
  @GeneratedValue
  @Column(name = "book_id")
  private int id;

  private String title;
  private String imageUrl;

  @ElementCollection
  @CollectionTable(name = "book_genres", joinColumns = @JoinColumn(name = "book_id"))
  @Column(name = "genre")
  private Set<String> genres = new HashSet<>();

  private int authorId;

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getImageUrl() {
    return imageUrl;
  }

  public void setImageUrl(String imageUrl) {
    this.imageUrl = imageUrl;
  }

  public Set<String> getGenres() {
    return genres;
  }

  public void setGenres(Set<String> genres) {
    this.genres = genres;
  }

  public int getAuthorId() {
    return authorId;
  }

  public void setAuthorId(int authorId) {
    this.authorId = authorId;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Book book = (Book) o;
    return getId() == book.getId() &&
        getAuthorId() == book.getAuthorId() &&
        Objects.equals(getTitle(), book.getTitle()) &&
        Objects.equals(getImageUrl(), book.getImageUrl()) &&
        Objects.equals(getGenres(), book.getGenres());
  }

  @Override
  public int hashCode() {
    return Objects.hash(getId(), getTitle(), getImageUrl(), getGenres(), getAuthorId());
  }

  @Override
  public String toString() {
    return new StringJoiner(", ", Book.class.getSimpleName() + "[", "]")
        .add("id=" + id)
        .add("title='" + title + "'")
        .add("imageUrl='" + imageUrl + "'")
        .add("genres=" + genres)
        .add("authorId=" + authorId)
        .toString();
  }
}
