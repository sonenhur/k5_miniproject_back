package miniproject.stellanex.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@AllArgsConstructor
@Builder
@Getter
public class ReviewRequest {
    private int grade;
    private String content;
    private Long movie_id;
    private Long review_id;
    private String date;
    private String writer;

}