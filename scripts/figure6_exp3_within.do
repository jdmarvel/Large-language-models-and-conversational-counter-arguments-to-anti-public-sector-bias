// ============================================================================
// Figure 6 — Experiment 3 (Motivated reasoning)
// Pre- to post-treatment changes in subjects' favorability ratings, by LLM style.
//
// HOW TO RUN: in Stata, set the working directory to the repository root
// (the folder that contains /data, /scripts, /figures), e.g.
//     cd "/path/to/zenodo-replication"
// then:
//     do scripts/figure6_exp3_within.do
// Outputs: figures/Figure6.pdf and figures/Figure6.jpg
// ============================================================================

clear all

use "data/3motivated_analysis.dta", clear

set scheme stmono1, permanently
graph set window fontface "Times New Roman"


// -------------------------------------------------------------------------------------------------
// experiment 3 figure
// -------------------------------------------------------------------------------------------------


keep lfav_opin_pre lfav_opin_post condition participantid
ren lfav_opin_pre lfav1
ren lfav_opin_post lfav2


reshape long lfav, i(participantid) j(post)


reg lfav b1.condition##i.post
margins post#condition

marginsplot, noci ///
	plot1opts(lc(blue) mc(blue) lp(solid)) ///
	plot2opts(lc(blue) mc(blue) lp(dash)) ///
	plot3opts(lc(red) mc(red) lp(solid)) ///
	plot4opts(lc(red) mc(red) lp(dash)) ///
	title("") ///
	ytitle("Mean favorability", margin(right)) ///
	xtitle("") ///
	ylabel(#6, format(%3.1f) grid) ///
	xlabel(1 "Pre-treatment" 2 "Post-treatment") ///
	xscale(range(0.9 2.1)) ///
	legend(order(1 "Strong challenge" 2 "Weak challenge" ///
		3 "Strong sycophant" 4 "Weak sycophant")  ///
		ring(0) position(12) region(c(none))) ///
	name(exp3within, replace)


graph export "figures/Figure6.pdf", name(exp3within) replace

// JPEG version: 5 inch width at 300 dpi (per JPART figure guidelines)
// xsize(5) sets the physical width to 5 inches; width(1500) gives 1500 px,
// so 1500 px / 5 in = 300 dpi. ysize(3.64) keeps Stata's default 5.5x4
// aspect ratio (4 * 5/5.5) so the figure isn't squeezed horizontally and the
// inset legend doesn't collide with the plotted lines.
graph display exp3within, xsize(5) ysize(3.64)
graph export "figures/Figure6.jpg", name(exp3within) width(1500) replace
