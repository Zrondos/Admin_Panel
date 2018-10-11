// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

// currentLinks = document.querySelectorAll('a[href="'+document.URL+'"]');
// currentLinks.‌​forEach(function(link) {
// link.className += ' current-link';})

function displayCourse(course_id){
    var x = document.getElementsByClassName("course_view");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    // document.getElementsByClassName('course_view').style.display="none";
    course_id="course_"+course_id
    to_edit=document.getElementById(course_id);
    to_edit.style.display="block"
}

function displayCohort(cohort_id){
    var x = document.getElementsByClassName("cohort_view");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    new_cohort_id="cohort_"+cohort_id
    to_edit=document.getElementById(new_cohort_id);
    to_edit.style.display="block"

    var y = document.getElementsByClassName("students_cohorts_view");
    var j;
    for (j = 0; j < y.length; j++) {
        y[j].style.display = "none";
    }
    students_cohorts_id="students_cohorts_"+cohort_id
    students_to_edit=document.getElementById(students_cohorts_id);
    students_to_edit.style.display="block"

    var z = document.getElementsByClassName("add_students_view");
    var k;
    for (k = 0; k < z.length; k++) {
        z[k].style.display = "none";
    }
    students_cohorts_id="add_students_"+cohort_id
    document.getElementById(students_cohorts_id).style.display="block"
}

function displayInstructor(instructor_id){
    var x = document.getElementsByClassName("instructor_view");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    instructor_id="instructor_"+instructor_id
    document.getElementById(instructor_id).style.display="block"
}

function displayStudent(student_id){
    var x = document.getElementsByClassName("student_view");
    var i;
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    student_id="student_"+student_id
    document.getElementById(student_id).style.display="block"
}
