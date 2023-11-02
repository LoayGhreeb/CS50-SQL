CREATE INDEX "enrollment_student_id" ON "enrollments" ("student_id");
CREATE INDEX "enrollment_course_id" ON "enrollments" ("course_id");

CREATE INDEX "course_index" ON "courses" ("department", "number", "semester");
