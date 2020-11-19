CREATE TABLE IF NOT EXISTS `practice_schema`.`student` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `student_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `practice_schema`.`professor` (
  `professor_id` INT NOT NULL AUTO_INCREMENT,
  `professor_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`professor_id`),
  UNIQUE INDEX `professor_id_UNIQUE` (`professor_id` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `practice_schema`.`course` (
  `course_id` INT NOT NULL AUTO_INCREMENT,
  `course_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE INDEX `course_id_UNIQUE` (`course_id` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `practice_schema`.`grade` (
  `grade_id` INT NOT NULL AUTO_INCREMENT,
  `grade` INT NOT NULL,
  `student_student_id` INT NOT NULL,
  `professor_professor_id` INT NOT NULL,
  `course_course_id` INT NOT NULL,
  PRIMARY KEY (`grade_id`),
  UNIQUE INDEX `grade_id_UNIQUE` (`grade_id` ASC) VISIBLE,
  INDEX `fk_grade_student_idx` (`student_student_id` ASC) VISIBLE,
  INDEX `fk_grade_professor1_idx` (`professor_professor_id` ASC) VISIBLE,
  INDEX `fk_grade_course1_idx` (`course_course_id` ASC) VISIBLE,
  CONSTRAINT `fk_grade_student`
    FOREIGN KEY (`student_student_id`)
    REFERENCES `practice_schema`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_grade_professor1`
    FOREIGN KEY (`professor_professor_id`)
    REFERENCES `practice_schema`.`professor` (`professor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_grade_course1`
    FOREIGN KEY (`course_course_id`)
    REFERENCES `practice_schema`.`course` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;