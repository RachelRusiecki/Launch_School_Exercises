/*

Create a school object. The school object uses the same kind of student object as the previous exercise. It has methods that use and update information about the student. Be sure to check out the previous exercise for the other arguments that might be needed by the school object. Implement the following methods for the school object:

addStudent: Adds a student by creating a new student and adding the student to a collection of students. The method adds a constraint that the year can only be any of the following values: '1st', '2nd', '3rd', '4th', or '5th'. Returns a student object if year is valid otherwise it logs "Invalid Year".
enrollStudent: Enrolls a student in a course.
addGrade: Adds the grade of a student for a course.
getReportCard: Logs the grades of a student for all courses. If the course has no grade, it uses "In progress" as the grade.
courseReport: Logs the grades of all students for a given course name. Only student with grades are part of the course report.
To test your code, use the three student objects listed below. Using the three student objects, produce the following values from the getReportCard and courseReport methods respectively.

*/

function createStudent(name, year) {
  return {
    name,
    year,
    courses: [],

    info() {
      console.log(`${this.name} is a ${this.year} year student`);
    },

    addCourse(course) {
      this.courses.push(course);
    },

    listCourses() {
      return this.courses;
    },

    addNote(courseCode, note) {
      this.courses.forEach(course => {
        if (course.code === courseCode) {
          course.note = course.note ? course.note + `; ${note}` : note;
        }
      });
    },

    updateNote(courseCode, note) {
      this.courses.forEach(course => {
        if (course.code === courseCode && course.note) course.note = note;
      });
    },

    viewNotes() {
      this.courses.forEach(course => {
        if (course.note) console.log(`${course.name}: ${course.note}`);
      });
    },
  }
}

const school = {
  students: [],

  addStudent(name, year) {
    if (['1st', '2nd', '3rd', '4th', '5th'].includes(year)) {
      let newStudent = createStudent(name, year);
      this.students.push(newStudent);
      return newStudent;
    } else {
      console.log('Invalid Year');
    }
  },

  enrollStudent(student, course) {
    student.addCourse(course);
  },

  addGrade(grade, student, courseCode) {
    student.courses.forEach(course => {
      if (course.code === courseCode) course.grade = grade;
    });
  },

  getReportCard(student) {
    student.courses.forEach(course => {
      if (course.grade) {
        console.log(`${course.name}: ${course.grade}`);
      } else {
        console.log(`${course.name}: In progress`);
      }
    });
  },

  courseReport(courseName) {
    let enrolledStudents = [];
    let grades = [];

    this.students.forEach(student => {
      student.courses.forEach(course => {
        if (course.name === courseName && course.grade) {
          enrolledStudents.push(student);
          grades.push(course.grade);
        }
      });
    });

    if (grades.length > 0) {
      console.log(`=${courseName} Grades=`);
      enrolledStudents.forEach(student => {
        student.courses.forEach(course => {
          if (course.name === courseName) {
            console.log(`${student.name}: ${course.grade}`);
          }
        });
      });

      console.log('---');

      let average = grades.reduce((sum, grade) => sum + grade) / grades.length;
      console.log(`Course Average: ${average}`);
    }
  },
};

let paul = school.addStudent('Paul', '3rd');
let mary = school.addStudent('Mary', '1st');
let kim = school.addStudent('Kim', '2nd');

school.enrollStudent(paul, { name: 'Math', code: 101 });
school.enrollStudent(paul, { name: 'Advanced Math', code: 102 });
school.enrollStudent(paul, { name: 'Physics', code: 202 });
school.addGrade(95, paul, 101);
school.addGrade(90, paul, 102);

school.enrollStudent(mary, { name: 'Math', code: 101 });
school.addGrade(91, mary, 101);

school.enrollStudent(kim, { name: 'Math', code: 101 });
school.enrollStudent(kim, { name: 'Advanced Math', code: 102 });
school.addGrade(93, kim, 101);
school.addGrade(90, kim, 102);

console.log(paul);
// {
//   name: 'paul',
//   year: '3rd',
//   courses: [
//     { name: 'Math', code: 101, grade: 95, },
//     { name: 'Advanced Math', code: 102, grade: 90, },
//     { name: 'Physics', code: 202, }
//   ],
// }

console.log(mary);
// {
//   name: 'Mary',
//   year: '1st',
//   courses: [
//     { name: 'Math', code: 101, grade: 91, },
//   ],
// }

console.log(kim);
// {
//   name: 'Kim',
//   year: '2nd',
//   courses: [
//     { name: 'Math', code: 101, grade: 93, },
//     { name: 'Advanced Math', code: 102, grade: 90, },
//    ],
// }

school.getReportCard(paul);
// = Math: 95
// = Advanced Math: 90
// = Physics: In progress

school.courseReport('Math');
// = =Math Grades=
// = Paul: 95
// = Mary: 91
// = Kim: 93
// = ---
// = Course Average: 93

school.courseReport('Advanced Math');
// = =Advanced Math Grades=
// = Paul: 90
// = Kim: 90
// = ---
// = Course Average: 90

console.log(school.courseReport('Physics'));
// = undefined
