package org.bailey.domain.repository;

import org.bailey.domain.entity.Movie;

import java.util.List;

public interface MovieRepository {
    List<Movie> findAll();
}