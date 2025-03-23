package org.bailey.controller;

import org.bailey.dto.MovieResponseDto;
import org.bailey.domain.entity.Movie;
import org.bailey.service.MovieService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1/movie")
public class MovieController {

    private final MovieService movieService;

    public MovieController(MovieService movieService) {
        this.movieService = movieService;
    }

    @GetMapping
    public List<MovieResponseDto> getMovie() {
        List<Movie> allMovies = movieService.getAllMovies();
        return allMovies.stream()
                .map(movie -> MovieResponseDto.builder()
                        .id(movie.getId())
                        .title(movie.getTitle())
                        .grade(movie.getGrade())
                        .genre(movie.getGenre())
                        .runningTime(movie.getRunningTime())
                        .thumbnail(movie.getThumbnail())
                        .releaseDate(movie.getReleaseDate())
                        .build())
                .collect(Collectors.toList());
    }
}
