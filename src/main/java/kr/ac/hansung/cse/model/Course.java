package kr.ac.hansung.cse.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@Entity
@Table(name = "courses") // courses라는 이름의 DB 테이블로 매핑
public class Course {
    @NotNull(message = "수강년도 입력은 필수입니다")
    private int year; // 수강년도
    @NotNull(message = "학기 입력은 필수입니다")
    private int semester; // 학기

    @Id
    @NotEmpty(message = "교과코드 입력은 필수입니다")
    private String courseCode; // 교과코드가 기본키

    @NotEmpty(message = "교과목명 입력은 필수입니다")
    private String courseName; // 교과목명

    // select태그
    @NotEmpty(message = "교과구분 선택은 필수입니다")
    private String courseType; // 교과구분

    @NotEmpty(message = "담당교수 입력은 필수입니다")
    private String professor; // 담당교수

    @NotNull(message = "학점 입력은 필수입니다")
    private int credits; // 학점

}
