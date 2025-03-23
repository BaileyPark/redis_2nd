package org.bailey.repository;

import org.bailey.domain.entity.Movie;
import org.bailey.domain.repository.MovieRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MovieRepositoryImpl implements MovieRepository {

    private final JpaMovieRepository jpa; // ✅ domain 레이어만 의존

    public MovieRepositoryImpl(JpaMovieRepository jpa) {
        this.jpa = jpa;
    }

    @Override
    public List<Movie> findAll() {
        return jpa.findAll();
    }
}
