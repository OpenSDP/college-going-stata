// Change the path in the next line to your top-level working directory
// cd "C:/repositories/college-going-stata"

// Change the path below to the directory where you will store programs
global programs "./programs"

// Change the path below to the directory where you will store chart output
global figures "./figures"

// Change the path below to the directory where you will store mark-up guides
global docs "./docs"

// Change the path below to the directory where you will store data
global data "./data/analysis"

// Set up
clear all
set more off
set linesize 255
graph set window fontface "Open Sans"

webdoc init "$docs/college_going_ontrack", md replace ///
	header(bstheme("simplex", jscript)) grdir("ontrack_img") logdir("ontrack_log")

webdoc append "programs\styling.txt"
webdoc append "programs\ga.html"

webdoc put <div class="navbar navbar-default navbar-fixed-top" id="logo">
webdoc put  <div class="container">
webdoc put <img src="https://opensdp.github.io/assets/images/OpenSDP-Banner_crimson.jpg" style="display: block; margin: 0 auto; height: 115px;">
webdoc put </div>
webdoc put </div>

// Modify here, bug causes nav to spill behind body on ultra large resolutions
webdoc put <div class="container">
webdoc put <div class="row">
webdoc put <nav class="col-xs-12 col-sm-12 col-md-3" style = "padding-right:15px;">
webdoc put <div class="nav nav-stacked affix" id="toc" style = "overflow-wrap:break-word;">
webdoc put <div class="well" style = "padding-right:10px; overflow-wrap:break-word;">
webdoc toc 3 0, md
webdoc put </div> // well
webdoc put </div> // nav fixed
webdoc put </div> // span1 fixed
webdoc put <div class="col-xs-12 col-sm-12 col-md-8 offset-md-1 pull-right">

/***
# On-Track in Ninth Grade
#### *College-Going Pathways*
#### *Stata Version*

## Getting Started

### Objective

In this guide you will be able to visualize the share of students who are on track to
graduate on time after ninth grade by high school and by their on-track status after tenth
grade.

### Using this Guide

The College-Going Pathways series is a set of guides, code, and sample data about
policy-relevant college-going topics. Browse this and other guides in the series for
ideas about ways to investigate student pathways through high school and
college. Each guide includes several analyses in the form of charts together with Stata
analysis and graphing code to generate each chart.

Once you’ve identified analyses that you want to try to replicate or modify, click the
"Download" buttons to download Stata code and sample data. You can make changes to the
charts using the code and sample data, or modify the code to work with your own data. If
you're familiar with Github, you can click "Go to Repository" and clone the entire
College-Going Pathways repository to your own computer.

### About the Data

The data visualizations in the College-Going Pathways series use a synthetically
generated college-going analysis sample data file which has one record per student. Each
high school student is assigned to a ninth-grade cohort, and each student record includes
demographic and program participation information, annual GPA and on-track status, high
school graduation outcomes, and college enrollment information. The Connect guide (coming
soon) will provide guidance and example code which will help you build a college-going
analysis file using data from your own school system.

### About the Analyses

Research suggests that academic performance in ninth grade strongly predicts
the likelihood of a student dropping out of high school. In this section, you
examine patterns of student retention and on-time transitions from ninth to
tenth grade. This information can provide an early warning to an agency with
students at-risk of dropping out, and might benefit from targeted support early
in their high school careers.

### Sample Restrictions

One of the most important decisions in running each analysis is
defining the sample. Each analysis corresponds to a different part of the education
pipeline and as a result requires different cohorts of students.

If you are using the synthetic data we have provided, the sample restrictions have been
predefined and are included below. If you run this code using your own agency data,
change the sample restrictions based on your data. Note that you will have to run these
sample restrictions at the beginning of your do file so they will feed into the rest of
your code.

***/

webdoc stlog

// Sample Restrictions

// Agency name
global agency_name "Agency"

// Ninth grade cohorts you can observe persisting to the second year of college
global chrt_ninth_begin_persist_yr2 = 2004
global chrt_ninth_end_persist_yr2 = 2006

// Ninth grade cohorts you can observe graduating high school on time
global chrt_ninth_begin_grad = 2004
global chrt_ninth_end_grad = 2006

// Ninth grade cohorts you can observe graduating high school one year late
global chrt_ninth_begin_grad_late = 2004
global chrt_ninth_end_grad_late = 2006

// High school graduation cohorts you can observe enrolling in college the fall after graduation
global chrt_grad_begin = 2007
global chrt_grad_end = 2009

// High school graduation cohorts you can observe enrolling in college two years after hs graduation
global chrt_grad_begin_delayed = 2007
global chrt_grad_end_delayed = 2009
webdoc stlog close

/***

Based on the sample data, you will have three cohorts (sometimes only
two) for analysis. If you are using your own agency data, you may decide
to aggregate results for more or fewer cohorts to report your results. This
decision depends on 1) how much historical data you have available and
2) what balance to strike between reliability and averaging
away information on recent trends. We suggest you average results for the last
three cohorts to take advantage of larger sample sizes and improve reliability.
However, if you have data for more than three cohorts, you may decide to not
average data out for fear of losing information about trends and recent changes
in your agency.

### Giving Feedback on this Guide

This guide is an open-source document hosted on Github and generated using the Stata
Webdoc package. We welcome feedback, corrections, additions, and updates. Please
visit the OpenSDP college-going pathways repository to read our contributor guidelines.

## Analyses

### Proportion of Students On-Track by High School

**Purpose:** This analysis illustrates what percent of students are on-track
after ninth grade graduate from each high school and the agency as a whole.
Different levels of on-track for graduation are distinguished by high school.


**Required Analysis File Variables:**

- `sid`
- `chrt_ninth`
- `first_hs-Name`
- `first_hs_code`
- `ontrack_endyr1*`
- `cum_gpa_yr1`

**Analysis-Specific Sample Restrictions:** Keep students in ninth grade cohorts
you can observe graduating high school on time AND are part of the on-track
sample (attended the first semester of ninth grade and never transferred into
or out of the system).

**Ask Yourself**

- How does the percent of students on-track differ by high school (consider
the overall height of each bar)?
- How does the percent of students on-track for an advanced versus general
diploma differ by high school (consider the different components of each bar)?

**Possible Next Steps or Action Plans:** Overall school-level results can be
disaggregated by student subgroups of interest, (race, FRPL status, and eighth
grade academic achievement).

**Analytic Technique:** Calculate the proportion of students on-track at each
school, and across the agency.

***/
webdoc stlog

// Proportion of Students On-Track by High School

// Step 1: Load the college-going analysis file into Stata
use "$data/college_going_analysis", clear

// Step 2: Keep students in ninth grade cohorts you can observe graduating high school on time AND are part of the on-track sample
local chrt_ninth_begin = ${chrt_ninth_begin_grad}
local chrt_ninth_end = ${chrt_ninth_end_grad}
keep if (chrt_ninth >= `chrt_ninth_begin' & chrt_ninth <= `chrt_ninth_end')
keep if ontrack_sample == 1

// Step 3: Create on-track categories that account for studentsҠcredits earned (already captured in the ontrack_endyr1 variable) and GPA after ninth grade
gen ontrack_endyr1_1 = 0
replace ontrack_endyr1_1 = 1 if ontrack_endyr1 == 1
label var ontrack_endyr1_1 "Off-Track to Graduate"

gen ontrack_endyr1_2 = 0
replace ontrack_endyr1_2 = 1 if ontrack_endyr1 == 2 & cum_gpa_yr1 < 3.0
label var ontrack_endyr1_2 "On-Track to Graduate, GPA < 3.0"

gen ontrack_endyr1_3 = 0
replace ontrack_endyr1_3 = 1 if ontrack_endyr1 == 2 & cum_gpa_yr1 >= 3.0 & ///
!mi(cum_gpa_yr1)
label var ontrack_endyr1_3 "On-Track to Graduate, GPA >= 3.0"

assert ontrack_endyr1_1 + ontrack_endyr1_2 + ontrack_endyr1_3 == 1

// Step 4: Obtain the agency average for the key variables
preserve
	collapse (mean) ontrack_endyr1_? (count) N=sid
	tempfile agency_level
	save `agency_level'
restore

// Step 5: Obtain mean rates for each school and append the agency average
collapse (mean) ontrack_endyr1_? (count) N=sid, by(first_hs_name first_hs_code)
append using `agency_level'

// Step 6: Provide a hs name label for the appended agency average and shorten hs name
replace first_hs_code = 0 if first_hs_code == .
replace first_hs_name = "${agency_name} AVERAGE" if mi(first_hs_name)
replace first_hs_name = subinstr(first_hs_name, " High School", "", .)

// Step 7: For students who are off-track upon completion of their first year of high school, convert the values to be negative for ease of visualization in the graph
replace ontrack_endyr1_1 = -ontrack_endyr1_1

// Step 8: Multiply the average of each outcome by 100 for graphical representation of the rates. Create a variable equal to the sum of the two on-track status variables for easier sorting
foreach var of varlist ontrack_endyr1_1 ontrack_endyr1_2 ontrack_endyr1_3  {
	replace `var' = (`var' * 100)
	format `var' %9.1f
}
gen ontrack_endyr1_sum = ontrack_endyr1_2 + ontrack_endyr1_3

// Step 9: Prepare to graph the results
// Generate a cohort label to be used in the footnote for the graph
local temp_begin = `chrt_ninth_begin'-1
local temp_end = `chrt_ninth_end'-1
if `chrt_ninth_begin'==`chrt_ninth_end' {
    local chrt_label "`temp_begin'-`chrt_ninth_begin'"
}
else {
    local chrt_label "`temp_begin'-`chrt_ninth_begin' through `temp_end'-`chrt_ninth_end'"
}

// Step 10: Graph the results
#delimit ;
graph bar ontrack_endyr1_3 ontrack_endyr1_2 ontrack_endyr1_1,
    over(first_hs_name, gap(20) sort(ontrack_endyr1_sum) label(angle(40)labsize(small)))
    blabel(bar, position(inside) size(2) format(%8.0f))
    bar(3, fcolor(maroon*.6) lcolor(maroon*.6))
    bar(1, fcolor(navy*.5) lcolor(navy*.5))
    bar(2, fcolor(navy*.8) lcolor(navy*.8)) stack
title("Proportion of Students On-Track to Graduate by School", size(medium))
    subtitle("End of Ninth Grade On-Track Status" "By High School")
legend(region(lcolor(white)) position(11) ring(0) order(2 1 3)
    label(3 "Off Track to Graduate")
    label(1 "On Track, GPA <3.0")
    label(2 "On Track, GPA>=3.0")
    symxsize(5) symysize(2) cols(1) size(vsmall))
yline(0, lcolor(black) lwidth(vvthin))
ytitle("Percent of Ninth Graders") yscale(range(-80(20)80)) ylabel(-80(20)80, nogrid)
graphregion(color(white) fcolor(white) lcolor(white))
plotregion(color(white) fcolor(white) lcolor(white))
note(" " "Sample: `chrt_label' ${agency_name} first-time ninth graders. Students who transferred into or out of ${agency_name} are excluded" "from the sample. All data from ${agency_name} administrative records.", span size(vsmall));
#delimit cr

graph export "figures/B1_OnTrack_Ninth_by_HS.png", replace width(1600) height(1200)
webdoc graph, width(1600)

webdoc stlog close

/***
### Ninth To Tenth Grade Transition by On-Track Status

**Purpose:** This analysis explores how on-track status after ninth grade
(the horizontal axis) predicts ontrack status in tenth grade (the vertical axis).
This analysis is useful for developing early dropout warning indicators for
at-risk students as early as the second semester of ninth grade.

**Required Analysis File Variables:**

- `sid`
- `chrt_ninth`
- `first_hs_name`
- `first_hs_code`
- `ontrack_endyr1*`
- `cum_gpa_yr1*`

**Analysis-Specific Sample Restrictions:** Keep students in ninth grade cohorts
you can observe graduating high school on time AND are part of the on-track
sample (attended the first semester of ninth grade and never transferred into
or out of the system).

**Ask Yourself:**

- What percent of those in a specific on-track category at the end of ninth
grade stay in that same on-track category? For example, what percent of
off-track ninth graders continue off-track in tenth grade?
- How might you use an early warning system to help students get back on-track
for graduation?

**Possible Next Steps or Action Plans:** Identify additional risk factors,
(chronic absenteeism, prior academic achievement etc.) which can be
incorporated into analyses like the one above. This could be used to further
understand which students struggle, why they struggle, and interventions to keep
them enrolled and engaged.

***/
webdoc stlog

// Ninth To Tenth Grade Transition by On-Track Status

// Step 1: Load the college-going analysis file into Stata
use "$data/college_going_analysis", clear

// Step 2: Keep students in ninth grade cohorts you can observe graduating high school on time AND are part of the on-track sample
local chrt_ninth_begin = ${chrt_ninth_begin_grad}
local chrt_ninth_end = ${chrt_ninth_end_grad}
keep if (chrt_ninth >= `chrt_ninth_begin' & chrt_ninth <= `chrt_ninth_end')
keep if ontrack_sample == 1

// Step 3: Create on-track categories that account for studentsҠcredits earned (already captured in the ontrack_endyr1 variable) and GPA after ninth grade
gen ontrack_endyr1_gpa = .
replace ontrack_endyr1_gpa = 1 if ontrack_endyr1 == 1
replace ontrack_endyr1_gpa = 2 if ontrack_endyr1 == 2 & cum_gpa_yr1 < 3.0
replace ontrack_endyr1_gpa = 3 if ontrack_endyr1 == 2 & cum_gpa_yr1 >= 3.0 & !mi(cum_gpa_yr1)

assert !mi(ontrack_endyr1_gpa) if !mi(ontrack_endyr1) & !mi(cum_gpa_yr1)

label define ot 1 "Off-Track to Graduate" 2 "On-Track, GPA<3.00" 3 "On-Track, GPA>=3.00"
label val ontrack_endyr1_gpa ot

// Step 4: Create indicators for students upon completion of their second year of high school
gen ontrack_endyr2_1 = 0
replace ontrack_endyr2_1 = 1 if ontrack_endyr2 == 0
label var ontrack_endyr2_1 "Off-Track to Graduate Yr2"

gen ontrack_endyr2_2 = 0
replace ontrack_endyr2_2 = 1 if ontrack_endyr2 == 1 & cum_gpa_yr2 < 3.0 & !mi(cum_gpa_yr2)
label var ontrack_endyr2_2 "On-Track, GPA < 3.0"

gen ontrack_endyr2_3 = 0
replace ontrack_endyr2_3 = 1 if ontrack_endyr2 == 1 & cum_gpa_yr2 >= 3.0 & !mi(cum_gpa_yr2)
label var ontrack_endyr2_3 "On-Track, GPA >= 3.0"

gen ontrack_endyr2_4 = 0
replace ontrack_endyr2_4 = 1 if status_after_yr2==3 | status_after_yr2==4
label var ontrack_endyr2_4 "Dropout/Disappear"

//assert ontrack_endyr2_1 + ontrack_endyr2_2 + ontrack_endyr2_3 + ontrack_endyr2_4 == 1

// Step 5: Determine the agency average for each of the indicators created in step 4.
collapse (mean) ontrack_endyr2_1 ontrack_endyr2_2 ontrack_endyr2_3 ontrack_endyr2_4, ///
by(ontrack_endyr1_gpa)
foreach var of varlist ontrack_endyr2_1 ontrack_endyr2_2 ontrack_endyr2_3 ontrack_endyr2_4 {
	replace `var' = ( `var' * 100)
	format `var' %9.1f
}

// Step 6: For students who are off-track upon completion of their second year of high school, convert the values to be negative for ease of visualization in the graph.
replace ontrack_endyr2_1 = ontrack_endyr2_1 * -1
replace ontrack_endyr2_4 = ontrack_endyr2_4 * -1

// Step 7: Prepare to graph the results
// Generate a cohort label to be used in the footnote for the graph
local temp_begin = `chrt_ninth_begin'-1
local temp_end = `chrt_ninth_end'-1
if `chrt_ninth_begin'==`chrt_ninth_end' {
    local chrt_label "`temp_begin'-`chrt_ninth_begin'"
}
else {
    local chrt_label "`temp_begin'-`chrt_ninth_begin' through `temp_end'-`chrt_ninth_end'"
}

// Step 8: Graph the results
#delimit ;
graph bar ontrack_endyr2_1 ontrack_endyr2_4 ontrack_endyr2_2 ontrack_endyr2_3 ,
    over(ontrack_endyr1_gpa, label(labsize(vsmall)) gap(50)) outergap(50)
    bar(1, fcolor(maroon*.4) lcolor(maroon*.4))
    bar(2, fcolor(maroon*.8) lcolor(maroon*.8))
    bar(3, fcolor(navy*.5) lcolor(navy*.5))
    bar(4, fcolor(navy*.8) lcolor(navy*.8)) stack
    blabel(bar, size(2) format(%8.0f) position(inside))
legend(symxsize(2) symysize(2) rows(4) size(2)
    region(lcolor(white)) position(2) order(4 3 1 2)
    label(1 "Off-Track to Graduate")
    label(2 "Dropout/Disappear")
    label(3 "On-Track to" "Graduate, GPA<3.0")
    label(4 "On-Track to" "Graduate, GPA>=3.0")
    title("End of Tenth Grade" "On-Track Status", size(small)))
title("End of Tenth Grade On-Track Status", size(medium))
    subtitle("by End of Ninth Grade Status", size(small))
    ytitle("Percent of Tenth Grade Students" "by Ninth Grade Status" " " " ", size(small))
    yscale(range(-40(20)100))
    ylabel(-40(20)100, nogrid labsize(small))
    ylabel(-40 "40" -20 "20" 0 "0" 20 "20" 40 "40" 60 "60" 80 "80" 100 "100")
    yline(0, lcolor(black) lwidth(vvthin))
text(-130 60 "Ninth Grade On-Track Status", size(small))
graphregion(color(white) fcolor(white) lcolor(white))
plotregion(color(white) fcolor(white) lcolor(white))
note(" " " " "Sample: `chrt_label' ${agency_name} first-time ninth graders. Students who transferred into or out of ${agency_name} are excluded" "from the sample. All data from ${agency_name} administrative records.", span size(vsmall));
#delimit cr

graph export "figures/B2_OnTrack_Tenth_by_OnTrack_Ninth.png", replace width(1600) height(1200)
webdoc graph, width(1600)

webdoc stlog close

/***

#### *This guide was originally created by the Strategic Data Project.*

***/

webdoc put </div> // span
webdoc put </div> // row
webdoc put </div> // container

webdoc close
