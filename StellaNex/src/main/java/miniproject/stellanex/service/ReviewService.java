package miniproject.stellanex.service;

import lombok.RequiredArgsConstructor;
import miniproject.stellanex.domain.Member;
import miniproject.stellanex.domain.Movie;
import miniproject.stellanex.domain.Review;
import miniproject.stellanex.dto.ReviewInfoResponse;
import miniproject.stellanex.dto.ReviewRequest;
import miniproject.stellanex.persistence.MemberRepository;
import miniproject.stellanex.persistence.MovieRepository;
import miniproject.stellanex.persistence.ReviewRepository;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.lang.module.FindException;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ReviewService {

    private final ReviewRepository reviewRepository;
    private final MemberRepository memberRepository;
    private final MovieRepository movieRepository;

    public void save(String email, Long movie_id, int grade, String content) {
        Member member = memberRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("존재하지 않는 유저입니다."));

        if (member == null) {
            throw new IllegalStateException("Member 객체가 null입니다.");
        }
        Movie movie = movieRepository.findById(movie_id)
                .orElseThrow(() -> new NoSuchElementException("영화를 찾을 수 없습니다."));

        Review review = Review.builder()
                .movie(movie)
                .grade(grade)
                .content(content)
                .writer(member)
                .build();

        reviewRepository.save(review);
    }

    public List<ReviewInfoResponse> getAllReviewsByMovieId(Long movieId) {
        List<Review> reviews = reviewRepository.findByMovieId(movieId);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        return reviews.stream()
                .map(review -> ReviewInfoResponse.builder()
                        .grade(review.getGrade())
                        .content(review.getContent())
                        .writer(review.getWriter().getEmail())
                        .date(review.getDate().format(formatter))
                        .build())
                .collect(Collectors.toList());
    }


    @Transactional
    public void edit(String email, Long reviewId, ReviewRequest dto) {
        Review review = reviewRepository.findById(reviewId)
                .orElseThrow(() -> new FindException("존재하지 않는 게시물입니다"));

        // 리뷰의 내용을 업데이트
        review.updateContent(dto.getContent());
    }

    @Transactional
    public void delete(String email, Long reviewId) {
        reviewRepository.deleteById(reviewId);
    }
}
