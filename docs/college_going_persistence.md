<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone=no">
<title>college_going_persistence.md</title>
<link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css" rel="stylesheet" integrity="sha384-C0X5qw1DlkeV0RDunhmi4cUBUkPDTvUqzElcNWm1NI2T4k8tKMZ+wRPQOhZfSJ9N" crossorigin="anonymous">
<style>
img { max-width: 100%; height: auto; }
pre { word-break: normal; word-wrap: normal; }
code { color: inherit; background-color: #F5F5F5; }
pre code, pre samp { white-space: pre; }
</style>
<style>
.stcmd .stcmt { font-style: italic; opacity: 0.5; }
.stoom, .stcnp { font-style: italic; }
@media screen { .stcnp { display: none; }}
</style>
</head>
<body>
<style>
.affix {
   position: static;
 }
 @media (min-width: 992px) {
    #toc.affix {
		top: inherit;
		width: inherit;
		position: fixed;
    }
}

a {
  color: #A51C30;
}

a:focus, a:hover {
  color: #6D121F;
}

/* Fix for anchor link scroll location */
h1:before, h2:before, h3:before, h4:before {
  display: block;
  content: " ";
  margin-top: -124px;
  height: 124px;
  visibility: hidden;
}

#logo{
	 background-color: #A51C30;
}
body {
	padding-top: 115px;
	overflow: visible;
}
html {
	overflow: visible;
}
</style>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-129904036-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
 
  gtag('config', 'UA-129904036-1');
</script>
<div class="navbar navbar-default navbar-fixed-top" id="logo">
 <div class="container">
<img src="https://opensdp.github.io/assets/images/OpenSDP-Banner_crimson.jpg" style="display: block; margin: 0 auto; height: 115px;">
</div>
</div>
<pre id="stlog-1" class="stcmd"><code><span class="stcmt">// Modify here, bug causes nav to spill behind body on ultra large resolutions</span>
</code></pre>
<div class="container">
<div class="row">
<nav class="col-xs-12 col-sm-12 col-md-3" style = "padding-right:15px;">
<div class="nav nav-stacked affix" id="toc" style = "overflow-wrap:break-word;">
<div class="well" style = "padding-right:10px; overflow-wrap:break-word;">
<ul>
<li><a href="#h-1">College Persistence</a>
<ul>
<li><a href="#h-1-1">Getting Started</a>
<ul>
<li><a href="#h-1-1-1">Objective</a>
</li>
<li><a href="#h-1-1-2">Using this Guide</a>
</li>
<li><a href="#h-1-1-3">About the Data</a>
</li>
<li><a href="#h-1-1-4">About the Analyses</a>
</li>
<li><a href="#h-1-1-5">Sample Restrictions</a>
</li>
<li><a href="#h-1-1-6">Giving Feedback on this Guide</a>
</li>
</ul>
</li>
<li><a href="#h-1-2">Analyses</a>
<ul>
<li><a href="#h-1-2-1">Persistence Rates to the Second Year of College by High School</a>
</li>
<li><a href="#h-1-2-2">Persistence Across Two-Year and Four-Year Colleges</a>
</li>
<li><a href="#h-1-2-3">Top-Enrolling Colleges/Universities of Agency Graduates</a>
</li>
</ul>
</li>
</ul>
</li>
</ul>
</div>
</div>
</div>
<div class="col-xs-12 col-sm-12 col-md-8 offset-md-1 pull-right">

<h1 id="h-1">College Persistence</h1>
#### *College-Going Pathways*
#### *Stata Version*

<h2 id="h-1-1">Getting Started</h2>

<h3 id="h-1-1-1">Objective</h3>

In this guide you will be able to visualize the share of students who enroll and then
persist into a second year of college based on high school, college type, and
top-enrolling colleges.

<h3 id="h-1-1-2">Using this Guide</h3>

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

<h3 id="h-1-1-3">About the Data</h3>

The data visualizations in the College-Going Pathways series use a synthetically
generated college-going analysis sample data file which has one record per student. Each
high school student is assigned to a ninth-grade cohort, and each student record includes
demographic and program participation information, annual GPA and on-track status, high
school graduation outcomes, and college enrollment information. The Connect guide (coming
soon) will provide guidance and example code which will help you build a college-going
analysis file using data from your own school system.

<h3 id="h-1-1-4">About the Analyses</h3>

For many high school graduates, college enrollment is just the first of many
hurdles on the road to postsecondary success. While considerable attention has
been paid to challenges that surround college preparedness, access, and
enrollment, only recently has conversation expanded to consider barriers to
degree completion. These barriers must be understood and addressed at both the
secondary and postsecondary levels for college attainment rates to increase. In
the last section of the education pipeline, you examine patterns of persistence
to the second year of college to identify early indications of student progress
towards degree attainment.

<h3 id="h-1-1-5">Sample Restrictions</h3>

One of the most important decisions in running each analysis is
defining the sample. Each analysis corresponds to a different part of the education
pipeline and as a result requires different cohorts of students.

If you are using the synthetic data we have provided, the sample restrictions have been
predefined and are included below. If you run this code using your own agency data,
change the sample restrictions based on your data. Note that you will have to run these
sample restrictions at the beginning of your do file so they will feed into the rest of
your code.

<pre id="stlog-2" class="stcmd"><code>
<span class="stcmt">// Sample Restrictions</span>

<span class="stcmt">// Agency name</span>
global agency_name "Agency"

<span class="stcmt">// Ninth grade cohorts you can observe persisting to the second year of college</span>
global chrt_ninth_begin_persist_yr2 = 2004
global chrt_ninth_end_persist_yr2 = 2006

<span class="stcmt">// Ninth grade cohorts you can observe graduating high school on time</span>
global chrt_ninth_begin_grad = 2004
global chrt_ninth_end_grad = 2006

<span class="stcmt">// Ninth grade cohorts you can observe graduating high school one year late</span>
global chrt_ninth_begin_grad_late = 2004
global chrt_ninth_end_grad_late = 2006

<span class="stcmt">// High school graduation cohorts you can observe enrolling in college the fall after graduation</span>
global chrt_grad_begin = 2007
global chrt_grad_end = 2009

<span class="stcmt">// High school graduation cohorts you can observe enrolling in college two years after hs graduation</span>
global chrt_grad_begin_delayed = 2007
global chrt_grad_end_delayed = 2009
</code></pre>

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

<h3 id="h-1-1-6">Giving Feedback on this Guide</h3>

This guide is an open-source document hosted on Github and generated using the Stata
Webdoc package. We welcome feedback, corrections, additions, and updates. Please
visit the OpenSDP college-going pathways repository to read our contributor guidelines.

<h2 id="h-1-2">Analyses</h2>

<h3 id="h-1-2-1">Persistence Rates to the Second Year of College by High School</h3>

**Purpose:** Initial enrollment decisions can dramatically affect higher
education trajectories and the likelihood of degree attainment. This analysis
provides a snapshot of persistence to the second year of college by examining
persistence rates across high schools in the system. The analysis illuminates
differences in persistence by level of college first attended (two-year vs.
four-year). Given another year of sample data, the analysis could also be
conducted by time of initial entry (seamless vs. delayed enrollment).

**Required Analysis File Variables:**

- `sid`
- `enrl_1oct_grad_yr1_any`
- `enrl_1oct_grad_yr1_4yr`
- `enrl_1oct_grad_yr1_2yr`
- `enrl_grad_persist_any`
- `enrl_grad_persist_4yr`
- `enrl_grad_persist_2yr`
- `last_hs_code`
- `last_hs_name`
- `enrl_ever_w2_grad_any`

**Analysis-Specific Sample Restrictions:**

- Keep students in high school graduation cohorts you can
observe enrolling in college the fall after graduation
- Keep only graduates who received regular or advanced diplomas
(i.e. exclude students who received SPED diplomas
and other certificates).
- Drop high schools with less than 20 students in the sample.

**Ask Yourself**

- How does college persistence for enrollers at 2-year colleges compare to
enrollers at 4-year colleges? Given another year of sample data, how does
college persistence for seamless enrollers compare to delayed enrollers?

**Possible Next Steps or Action Plans:** Consider establishing MOUs with local
community colleges to obtain detailed data on graduates’ postsecondary pursuits
at two-year colleges (Course enrollment and transcript data) allowing agencies
to explore persistence rates by assignment to remediation coursework.

**Analytic Technique:** Calculate the proportion of students who persist to the
second year of college by the high school those students first attended.

<figure id="fig-3">
<a href="persistence_img/3.png"><img alt="persistence_img/3.png" src="persistence_img/3.png"/></a>
</figure>
<pre id="stlog-3" class="stcmd"><code>
<span class="stcmt">// Persistence Rates to the Second Year of College by High School</span>

<span class="stcmt">// Step 1: Load the college-going analysis file into Stata</span>
use "$data/college_going_analysis", clear

<span class="stcmt">// Step 2: Keep students in high school graduation cohorts you can observe enrolling in college the fall after graduation</span>
local chrt_grad_begin = ${chrt_grad_begin}
local chrt_grad_end = ${chrt_grad_end}
keep if (chrt_grad &gt;= `chrt_grad_begin' &amp; chrt_grad &lt;= `chrt_grad_end')

<span class="stcmt">// Step 3: Rename outcome variable names for simplicity</span>
rename enrl_grad_persist_any persist_any
rename enrl_grad_persist_2yr persist_2yr
rename enrl_grad_persist_4yr persist_4yr
rename enrl_1oct_grad_yr1_any enrl_any
rename enrl_1oct_grad_yr1_2yr enrl_2yr
rename enrl_1oct_grad_yr1_4yr enrl_4yr

<span class="stcmt">// Step 4: Obtain the agency-level average for persistence and enrollment</span>
preserve
	collapse (sum) persist_any enrl_4yr if enrl_4yr==1
	tempfile agency_level_4yr
	save `agency_level_4yr'
restore

preserve
	collapse (sum) persist_any enrl_2yr if enrl_2yr==1
	tempfile agency_level_2yr
	save `agency_level_2yr'
restore

<span class="stcmt">// Step 5: Obtain the school-level average for persistence and enrollment</span>
preserve
	collapse (sum) persist_any enrl_4yr if enrl_4yr==1, by(last_hs_code last_hs_name)
	tempfile school_level_4yr
	save `school_level_4yr'
restore

collapse (sum) persist_any enrl_2yr if enrl_2yr==1, by(last_hs_code last_hs_name)

<span class="stcmt">// Step 6: Append on the previous agency-level and school-level files</span>
append using `agency_level_4yr'
append using `agency_level_2yr'
append using `school_level_4yr'

<span class="stcmt">// Step 7: Provide a hs name label for the agency average and shorten hs name</span>
replace last_hs_code = 0 if last_hs_code == .
replace last_hs_name = "${agency_name} AVERAGE" if mi(last_hs_name)
replace last_hs_name = subinstr(last_hs_name, " High School", "", .)

<span class="stcmt">// Step 8: Calculate percent persistence at 4-year and 2-year colleges and multiply outcomes of interest by 100 for graphical representation of the rates</span>
gen pct_persist_any = persist_any / enrl_4yr
replace pct_persist_any = round((pct_persist_any * 100))
foreach type in 2yr 4yr {
	gen pct_persist_`type' = persist_any / enrl_`type'
	replace pct_persist_`type' = round((pct_persist_`type' * 100))
}

<span class="stcmt">// Step 9: Drop any high schools with fewer than 20 students</span>
drop if enrl_4yr &lt; 20
drop if enrl_2yr &lt; 20

<span class="stcmt">// Step 10: Consolidate persistence data into single column and then reshape the data</span>
gen n=2 if pct_persist_2yr~=.
replace n=4 if pct_persist_4yr~=.
replace pct_persist_4yr= pct_persist_2yr if pct_persist_4yr==.
keep last_hs_code last_hs_name pct_persist_4yr n
rename pct_persist_4yr pct_persist
reshape wide pct_persist, i(last_hs_name) j(n)

<span class="stcmt">// Step 11: Prepare to graph the results</span>
<span class="stcmt">// Generate a cohort label to be used in the footnote for the graph</span>
local temp_begin = `chrt_grad_begin'-1
local temp_end = `chrt_grad_end'-1
if `chrt_grad_begin'==`chrt_grad_end' {
    local chrt_label "`temp_begin'-`chrt_grad_begin'"
}
else {
    local chrt_label "`temp_begin'-`chrt_grad_begin' through `temp_end'-`chrt_grad_end'"
}

<span class="stcmt">// Step 12: Graph the results</span>
#delimit ;
graph bar pct_persist4 pct_persist2,
    over(last_hs_name, label(angle(45)labsize(small)) sort(pct_persist4)) bargap(0) outergap(100)
    bar(1, fcolor(dkorange) fi(inten70) lcolor(dkorange) lwidth(vvvthin))
    bar(2, fcolor(navy) fi(inten60) lcolor(navy) lwidth(vvvthin))
    blabel(total, position(outside) color(black) size(vsmall) format(%8.0f))
legend(label(1 "4-year College") label(2 "2-year College")
    position(11) ring(1) symxsize(2) symysize(2) rows(2) size(small) region(lstyle(none) lcolor(none) color(none)))
title("College Persistence by High School, at Any College")
    subtitle("Seamless Enrollers by Type of College")
    ytitle("% of Seamless Enrollers")
    yscale(range(0(20)100))
    ylabel(0(20)100, nogrid)
graphregion(color(white) fcolor(white) lcolor(white))
plotregion(color(white) fcolor(white) lcolor(white))
note(" " "Sample: `chrt_label' ${agency_name} high school graduates. Postsecondary enrollment outcomes from NSC matched records."
"All other data from agency administrative records.", size(vsmall));
#delimit cr

graph export "figures/E1_Persistence_by_HS.png", replace width(1600) height(1200)

</code></pre>

<h3 id="h-1-2-2">Persistence Across Two-Year and Four-Year Colleges</h3>

**Purpose:** This analysis provides a snapshot of persistence to the second
year of college from one type of college to another for different high schools
in the system. The left analysis charts explores how seamless enrollers in
4-year colleges either persist at a 4-year or switch to a 2-year. The right
analysis charts how seamless enrollers in 2-year colleges either persist at a
2-year or switch to a 4-year.

**Required Analysis File Variables:**

- `sid`
- `enrl_1oct_grad_yr1_any`
- `enrl_1oct_grad_yr1_4yr`
- `enrl_1oct_grad_yr1_2yr`
- `enrl_grad_persist_any`
- `enrl_grad_persist_4yr`
- `enrl_grad_persist_2yr`
- `last_hs_code`
- `last_hs_name`


**Analysis-Specific Sample Restrictions:**

- Keep the three most recent cohorts of graduates for which
persistence in college over four consecutive years can be
reported.
- Keep only graduates enrolled in 4-yr colleges and universities
the fall following high school graduation.
- Keep only graduates for whom cumulative high school GPAs
can be calculated (or obtained from the agency)
- Only include the top six enrolling 4-year colleges
- Only report persistence rates among students falling in each
high school GPA category if the sample includes 25 or more
students

**Ask Yourself**

- How do the rates of persistence or switching differ for seamless enrollers at
4-year vs. 2-year colleges?

**Possible Next Steps or Action Plans:** Create individual school-level reports
for administrators and college counselors to communicate which postsecondary
institutions are associated with greater rates of persistence. Additionally,
conduct similar analyses that include more detailed institutional information
that may be associated with students’ prospects of persisting (e.g. cost of
tuition and room/board, financial aid, etc.).

**Analytic Technique:** Calculate the proportion of 4-yr college-goers who
persist through four years of college by the postsecondary institution first
attended and cumulative high school GPA category.

<figure id="fig-4">
<a href="persistence_img/4.png"><img alt="persistence_img/4.png" src="persistence_img/4.png"/></a>
</figure>
<figure id="fig-4_1">
<a href="persistence_img/4_1.png"><img alt="persistence_img/4_1.png" src="persistence_img/4_1.png"/></a>
</figure>
<pre id="stlog-4" class="stcmd"><code>
<span class="stcmt">// Persistence Across Two-Year and Four-Year Colleges</span>

<span class="stcmt">// Step 1:Load the college-going analysis file into Stata</span>
use "$data/college_going_analysis", clear

<span class="stcmt">// Step 2: Keep students in high school graduation cohorts you can observe enrolling in college the fall after graduation</span>
local chrt_grad_begin = ${chrt_grad_begin}
local chrt_grad_end = ${chrt_grad_end}
keep if (chrt_grad &gt;= `chrt_grad_begin' &amp; chrt_grad &lt;= `chrt_grad_end')

<span class="stcmt">// Step 3: Rename outcome variable names for simplicity</span>
rename enrl_grad_persist_2yr persist_2yr
rename enrl_1oct_grad_yr1_2yr enrl_2yr
rename enrl_grad_persist_4yr persist_4yr
rename enrl_1oct_grad_yr1_4yr enrl_4yr

<span class="stcmt">// Step 4: Create binary outcomes for enrollers who switch from 4-yr to 2-yr, or vice versa</span>
gen persist_4to2yr = (enrl_4yr == 1 &amp; enrl_1oct_grad_yr2_2yr == 1) if !mi(chrt_grad)
gen persist_2to4yr = (enrl_2yr == 1 &amp; enrl_1oct_grad_yr2_4yr == 1) if !mi(chrt_grad)

<span class="stcmt">// Step 5: Obtain the agency-level average for the different persistence outcomes</span>
preserve
	collapse (sum) persist_4yr persist_4to2yr enrl_4yr persist_2yr persist_2to4yr enrl_2yr
	tempfile agency_level
	save `agency_level'
restore

<span class="stcmt">// Step 6: Obtain the school-level average for the different persistence outcomes</span>
collapse (sum) persist_4yr persist_4to2yr enrl_4yr persist_2yr persist_2to4yr enrl_2yr, by(last_hs_code last_hs_name)
append using `agency_level'

<span class="stcmt">// Step 7: Provide a hs name label for the agency average and shorten hs name</span>
replace last_hs_name = "${agency_name} Average" if mi(last_hs_name)
replace last_hs_code = 0 if mi(last_hs_code)
replace last_hs_name = subinstr(last_hs_name, " High School", "", .)

<span class="stcmt">// Step 8: Generate percentages for different persistence outcomes.  Multiply outcomes of interest by 100 for graphical representations of the rates</span>
gen pct_persist_4yr = persist_4yr / enrl_4yr
gen pct_persist_4to2yr = persist_4to2yr / enrl_4yr
gen pct_persist_2yr = persist_2yr / enrl_2yr
gen pct_persist_2to4yr = persist_2to4yr / enrl_2yr

foreach var in pct_persist_2yr pct_persist_2to4yr pct_persist_4yr pct_persist_4to2yr {
	replace `var' = round((`var' * 100))
}

<span class="stcmt">// Step 9: Create total persistence rates by summing up the other variables</span>
gen total_persist_4yr = pct_persist_4yr + pct_persist_4to2yr
gen total_persist_2yr = pct_persist_2yr + pct_persist_2to4yr

<span class="stcmt">//Step 10: Prepare to graph the results</span>
<span class="stcmt">// 1. Generate a cohort label to be used in the footnote for the graph</span>
local temp_begin = `chrt_grad_begin'-1
local temp_end = `chrt_grad_end'-1
if `chrt_grad_begin'==`chrt_grad_end' {
    local chrt_label "`temp_begin'-`chrt_grad_begin'"
}
else {
    local chrt_label "`temp_begin'-`chrt_grad_begin' through `temp_end'-`chrt_grad_end'"
}
<span class="stcmt">// 2. Generate graphing code to place value labels for the total persistence rates; change xpos (the position of the first leftmost label) and xposwidth (the horizontal width of the labels) to finetune.</span>
foreach yr in 4 2 {
    sort total_persist_`yr'yr
    local total_persist_`yr'yr ""
    local num_obs = _N
    foreach n of numlist 1/`num_obs' {
    local temp_total_persist_`yr'yr = total_persist_`yr'yr in `n'
    local total_persist_`yr'yr `"`total_persist_`yr'yr' `temp_total_persist_`yr'yr'"'
    }
    local total_persist_`yr'yr_label ""
    local xpos = 7
    local xposwidth = 93.5
    foreach val of local total_persist_`yr'yr {
    local val_pos = `val' + 6
    local total_persist_`yr'yr_label `"`total_persist_`yr'yr_label' text(`val_pos' `xpos' "`val'", size(2.1) color(gs7))"'
    local xpos = `xpos' + `xposwidth'/_N
    }
    disp `"`total_persist_`yr'yr_label'"'
}

<span class="stcmt">// Step 11: Graph the results (1/2) for seamless enrollers at 4-year colleges</span>
#delimit ;
graph bar pct_persist_4yr pct_persist_4to2yr if enrl_4yr &gt;= 20,
    over(last_hs_name, label(angle(45)labsize(small)) sort(total_persist_4yr)) bargap(0) outergap(100)
    bar(1, fcolor(dkorange) fi(inten70) lcolor(dkorange) lwidth(vvvthin))
    bar(2, fcolor(navy) fi(inten60) lcolor(navy) lwidth(vvvthin)) stack
    blabel(bar, position(inside) color(black) size(vsmall) format(%8.0f))
legend(label(1 "Persisted at 4-year College") label(2 "Switched to 2-year College")
    position(11) order(2 1) ring(1) symxsize(2) symysize(2) rows(2) size(small) region(lstyle(none) lcolor(none) color(none)))
title("College Persistence by High School")
    subtitle("Seamless Enrollers at 4-year Colleges")
    `total_persist_4yr_label'
    ytitle("Percent of Seamless Enrollers")
    yscale(range(0(20)100))
    ylabel(0(20)100, nogrid)
graphregion(color(white) fcolor(white) lcolor(white))
plotregion(color(white) fcolor(white) lcolor(white))
note(" " "Sample: `chrt_label' ${agency_name} high school graduates. Postsecondary enrollment outcomes from NSC matched records."
"All other data from agency administrative records.", size(vsmall));
#delimit cr

graph export "figures/E2a_Persistence_4yr_Seamless_Enrlers.png", replace width(1600) height(1200)

<span class="stcmt">// Step 12: Graph the results (1/2) for seamless enrollers at 2-year colleges</span>
#delimit ;
graph bar pct_persist_2yr pct_persist_2to4yr if enrl_4yr &gt;= 20,
    over(last_hs_name, label(angle(45)labsize(small)) sort(total_persist_2yr)) bargap(0) outergap(100)
    bar(1, fcolor(navy) fi(inten60) lcolor(navy) lwidth(vvvthin))
    bar(2, fcolor(dkorange) fi(inten70) lcolor(dkorange) lwidth(vvvthin)) stack
    blabel(bar, position(inside) color(black) size(vsmall) format(%8.0f))
legend(label(2 "Switched to 4-year College") label(1 "Persisted at 2-year College")
    position(11) order(2 1) ring(1) symxsize(2) symysize(2) rows(2) size(small) region(lstyle(none) lcolor(none) color(none)))
title("College Persistence by High School")
    subtitle("Seamless Enrollers at 2-year Colleges")
    `total_persist_2yr_label'
    ytitle("Percent of Seamless Enrollers")
    yscale(range(0(20)100))
    ylabel(0(20)100, nogrid)
graphregion(color(white) fcolor(white) lcolor(white))
plotregion(color(white) fcolor(white) lcolor(white))
note(" " "Sample: `chrt_label' ${agency_name} high school graduates. Postsecondary enrollment outcomes from NSC matched records."
"All other data from agency administrative records.", size(vsmall));
#delimit cr

graph export "figures/E2b_Persistence_2yr_Seamless_Enrlers.png", replace width(1600) height(1200)

</code></pre>

<h3 id="h-1-2-3">Top-Enrolling Colleges/Universities of Agency Graduates</h3>

**Purpose:** This analysis reports enrollment and persistence rates among
top-enrolling two- and four- year institutions attended by graduates. This
analysis illuminates differences in persistence rates to the second year of
college among top-enrolling postsecondary institutions. Agency staff that
advise students during their senior year may find this information useful when
meeting to weigh college options.

**Required Analysis File Variables:**

- `sid`
- `enrl_1oct_grad_yr1_any`
- `enrl_1oct_grad_yr1_4yr`
- `enrl_1oct_grad_yr1_2yr`
- `enrl_grad_persist_any`
- `enrl_grad_persist_4yr`
- `enrl_grad_persist_2yr`
- `first_college_name_any`
- `first_college_name_2yr`
- `first_college_name_4yr`

** Analysis-Specific Sample Restrictions:**

- Keep only the most recent cohort of seamless college-goers
for which persistence to the second year of college can be
reported
- Only include postsecondary institutions with 25 or more
agency graduates attending.

**Ask Yourself**

- What are the top enrolling 4-year and 2-year colleges or universities in your
agency? What are the persistence rates at those colleges and universities?

**Analytic Technique:** Calculate the proportion of college-goers attending
top-enrolling 2- and 4-year institutions, as well as the proportion of seamless
enrollers who persist to the second year of any college, by the postsecondary
institution graduates first attended.

<pre id="stlog-5" class="stcmd"><code>
<span class="stcmt">// Top-Enrolling Colleges/Universities of Agency Graduates</span>

<span class="stcmt">// Step 1: Load the college-going analysis file into Stata</span>
use "$data/college_going_analysis", clear

<span class="stcmt">// Step 2: Keep students in high school graduation cohorts you can observe enrolling in college the fall after graduation</span>
local chrt_grad_begin = ${chrt_grad_begin}
local chrt_grad_end = ${chrt_grad_end}
keep if (chrt_grad &gt;= `chrt_grad_begin' &amp; chrt_grad &lt;= `chrt_grad_end')

<span class="stcmt">// Step 3: Indicate the number of top-enrolling institutions you would like listed</span>
local num_inst = 5

<span class="stcmt">// Step 4: Calculate the number and % of students enrolled in each college the fall after graduation,</span>
<span class="stcmt">// and the number and % of students persisting, by college type</span>

<span class="stcmt">// 1. Calculate for 4-year colleges</span>
preserve

	collapse (sum) enrl_1oct_grad_yr1_4yr enrl_grad_persist_4yr, by(first_college_name_4yr)
	keep if !mi(first_college_name_4yr)
	egen total_enrolled = sum(enrl_1oct_grad_yr1_4yr)
	egen total_persisted = sum(enrl_grad_persist_4yr)
	gen pct_enrolled_college = round((enrl_1oct_grad_yr1_4yr / total_enrolled)*100, .1)
	gen pct_persist_college = round((enrl_grad_persist_4yr / enrl_1oct_grad_yr1_4yr)*100, .1)
	format pct* %3.1f
	rename enrl_1oct_grad_yr1_4yr enrl_1oct_grad_yr1
	rename enrl_grad_persist_4yr enrl_grad_persist
	rename first_college_name_4yr first_college_name
	gen type = "4yr"
	tempfile college_4yr
	save `college_4yr'

restore

<span class="stcmt">// 2. Calculate for 2-year colleges, and append the information for 4-year colleges</span>
collapse (sum) enrl_1oct_grad_yr1_2yr enrl_grad_persist_2yr, by(first_college_name_2yr)
keep if !mi(first_college_name_2yr)
egen total_enrolled = sum(enrl_1oct_grad_yr1_2yr)
egen total_persisted = sum(enrl_grad_persist_2yr)
gen pct_enrolled_college = round((enrl_1oct_grad_yr1_2yr / total_enrolled)*100, .1)
gen pct_persist_college = round((enrl_grad_persist_2yr / enrl_1oct_grad_yr1_2yr)*100, .1)
format pct* %3.1f
rename enrl_1oct_grad_yr1_2yr enrl_1oct_grad_yr1
rename enrl_grad_persist_2yr enrl_grad_persist
rename first_college_name_2yr first_college_name
gen type = "2yr"
append using `college_4yr'

<span class="stcmt">// Step 5: Create Table 1 with all 2-year and 4-year colleges listed</span>
preserve

    <span class="stcmt">// 1. Create two observations, one for each college type</span>
	local newrows = _N+2
	set obs `newrows'
	replace  type="2yr" if _n==_N-1
	replace  type="4yr" if _n==_N

	replace  first_college_name = "ALL 2-YEAR COLLEGES" if type=="2yr" &amp; mi(first_college_name)
	replace  first_college_name = "ALL 4-YEAR COLLEGES" if type=="4yr" &amp; mi(first_college_name)

	<span class="stcmt">// 2. Populate the new observations</span>
	foreach type in 2 4 {
		summ total_enrolled if type == "`type'yr"
		replace enrl_1oct_grad_yr1 = r(mean) if first_college_name=="ALL `type'-YEAR COLLEGES"
		summ total_persisted if type == "`type'yr"
		replace enrl_grad_persist = r(mean) if first_college_name=="ALL `type'-YEAR COLLEGES"
	}
	replace pct_enrolled_college = 100 if mi(pct_enrolled_college)

	<span class="stcmt">// 3. Retain, reorder, and rename necessary variables</span>
	keep first_college_name enrl_1oct_grad_yr1 enrl_grad_persist pct_enrolled_college pct_persist_college type
	order first_college_name enrl_1oct_grad_yr1 pct_enrolled_college enrl_grad_persist pct_persist_college type

	gen rank = (regexm(first_college_name, "ALL"))
	gsort -type rank -enrl_1oct_grad_yr1
	drop rank type

	rename first_college_name College_Name
	rename enrl_1oct_grad_yr1 Number_Enrolled
	rename pct_enrolled_college Percent_Enrolled
	rename enrl_grad_persist Number_Persisted
	rename pct_persist_college Percent_Persisted

	<span class="stcmt">// 4. Outsheet Table 1 into a csv file</span>
	outsheet using "${figures}/E3_Top_Enrl_Col_Institutions_Table_1.csv", comma replace

restore

<span class="stcmt">// Step 6: Create Tables 2 and 3 with the number of institutions you wanted to list in Step 3 for 4-year (Table 2) and 2-year (Table 3) colleges, respectively</span>
<span class="stcmt">// 1. Identify the five top-enrolling 2- and 4-year institutions (5 based on the number you selected in step 3)</span>
gsort type -pct_enrolled_college
gen rank_2yr = _n in 1/`num_inst'

gsort -type -pct_enrolled_college
gen rank_4yr = _n in 1/`num_inst'

<span class="stcmt">// 2. Calculate the remaining proportion of students attending other 2- and 4-year colleges for purposes of populating the "Other" line (all other 2- and 4-year colleges beyond the number selected) in the table.</span>
foreach type in 2yr 4yr {
	egen other_number_`type'_temp = sum(enrl_1oct_grad_yr1) if mi(rank_`type') &amp; type=="`type'"
	egen other_number_`type' = max(other_number_`type'_temp)
	egen other_pct_`type'_temp = sum(pct_enrolled_college) if mi(rank_`type') &amp; type=="`type'"
	egen other_pct_`type' = max( other_pct_`type'_temp)
	egen other_number_persist_`type'_temp = sum(enrl_grad_persist) if mi(rank_`type') &amp; type=="`type'"
	egen other_number_persist_`type' = max(other_number_`type'_temp)
	drop *_temp
}

keep if !mi(rank_2yr) | !mi(rank_4yr)

<span class="stcmt">// 3. Create four new rows, one per college type for total counts and one per college type for colleges other than the top-enrolling ones</span>
local newrows = _N+4
set obs `newrows'
replace  type="2yr" if _n==_N-2 | _n==_N-3
replace  type="4yr" if _n==_N | _n==_N-1

replace first_college_name = "OTHER 2-YEAR COLLEGES" if type=="2yr" &amp; mi(first_college_name) &amp; _n==_N-3
replace first_college_name = "ALL 2-YEAR COLLEGES" if type=="2yr" &amp; mi(first_college_name) &amp; _n==_N-2
replace first_college_name = "OTHER 4-YEAR COLLEGES" if type=="4yr" &amp; mi(first_college_name) &amp; _n==_N-1
replace first_college_name = "ALL 4-YEAR COLLEGES" if type=="4yr" &amp; mi(first_college_name) &amp; _n==_N

<span class="stcmt">// 4. Populate the new rows</span>
foreach type in 2 4 {
	summ total_enrolled if type == "`type'yr"
	replace enrl_1oct_grad_yr1 = r(mean) if first_college_name=="ALL `type'-YEAR COLLEGES"
	summ total_persisted if type == "`type'yr"
	replace enrl_grad_persist = r(mean) if first_college_name=="ALL `type'-YEAR COLLEGES"
	summ other_number_`type'yr if type == "`type'yr"
	replace enrl_1oct_grad_yr1 = r(mean) if first_college_name=="OTHER `type'-YEAR COLLEGES"
	summ other_pct_`type'yr if type == "`type'yr"
	replace pct_enrolled_college = r(mean) if first_college_name=="OTHER `type'-YEAR COLLEGES"
	summ other_number_persist_`type'yr if type == "`type'yr"
	replace enrl_grad_persist = r(mean) if first_college_name=="OTHER `type'-YEAR COLLEGES"
}
replace pct_enrolled_college = 100 if mi(pct_enrolled_college)

<span class="stcmt">// 5. Retain, reorder, and rename necessary variables</span>
keep first_college_name enrl_1oct_grad_yr1 enrl_grad_persist pct_enrolled_college pct_persist_college type
order first_college_name enrl_1oct_grad_yr1 pct_enrolled_college enrl_grad_persist pct_persist_college type

gen rank = (regexm(first_college_name, "ALL"))
replace rank = 0.5 if regexm(first_college_name, "OTHER")
gsort -type rank -enrl_1oct_grad_yr1
drop rank

rename first_college_name College_Name
rename enrl_1oct_grad_yr1 Number_Enrolled
rename pct_enrolled_college Percent_Enrolled
rename enrl_grad_persist Number_Persisted
rename pct_persist_college Percent_Persisted

<span class="stcmt">// 6. Outsheet Table 2 (4-year colleges) into a csv file</span>
preserve
	keep if type=="4yr"
	drop type
	<span class="stcmt">// This is what the csv looks like</span>
	list * if _n &lt;=5, table
	outsheet using "figures/E3_Top_Enrl_Col_Institutions_Table_2.csv", comma replace
restore

<span class="stcmt">// 7. Outsheet Table 3 (2-year colleges) into a csv file</span>
preserve
	keep if type=="2yr"
	drop type
	<span class="stcmt">// This is what the csv looks like</span>
	list * if _n &lt;=5, table
	outsheet using "figures/E3_Top_Enrl_Col_Institutions_Table_3.csv", comma replace
restore

</code></pre>

#### *This guide was originally created by the Strategic Data Project.*

</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
