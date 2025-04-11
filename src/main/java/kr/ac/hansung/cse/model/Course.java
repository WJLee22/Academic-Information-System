package kr.ac.hansung.cse.model;

import jakarta.persistence.*;
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

    private int year; // 수강년도

    private int semester; // 학기

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto Increment 자동 증가
    private String courseCode; // 교과코드가 기본키

    private String courseName; // 교과목명

    private String courseType; // 교과구분

    private String professor; // 담당교수

    private int credits; // 학점

}
