// ============================================================================
// Figure 2 — Experiment 1 (Anti-public)
// Pre- and post-treatment performance-rating means for the upbeat LLM vs.
// the control/placebo group.
//
// HOW TO RUN: in Stata, set the working directory to the repository root
// (the folder that contains /data, /scripts, /figures), e.g.
//     cd "/path/to/zenodo-replication"
// then:
//     do scripts/figure2_exp1_within.do
// Outputs: figures/Figure2.pdf and figures/Figure2.jpg
// ============================================================================

clear all

use "data/1anti_public_analysis.dta", clear


// -------------------------------------------------------------------------------------------------
// experiment 1 figure
// -------------------------------------------------------------------------------------------------

gen convo = inlist(condition,2)


keep fedperf_pre fedperf_post convo participantid
ren fedperf_pre fedperf1
ren fedperf_post fedperf2


reshape long fedperf, i(participantid) j(post)


set scheme stmono1, permanently
graph set window fontface "Times New Roman"


reg fedperf i.convo##i.post
margins post#convo



marginsplot, noci ///
	plot2opts(lc(blue) mc(blue) lp(solid)) ///
	plot1opts(lc(red) mc(red) lp(solid)) ///
	title("") ///
	ytitle("Mean performance rating", margin(right)) ///
	xtitle("") ///
	ylabel(#10, format(%4.1f) grid) ///
	xlabel(1 "Pre-treatment" 2 "Post-treatment") ///
	xscale(range(0.9 2.1)) ///
	legend(order( 2 "Upbeat LLM" 1 "Static information/Placebo LLM")  ///
		ring(0) position(12) region(c(none))) ///
	name(exp1within, replace)


graph export "figures/Figure2.pdf", name(exp1within) replace

// JPEG version: 5 inch width at 300 dpi (per JPART figure guidelines)
// xsize(5) sets the physical width to 5 inches; width(1500) gives 1500 px,
// so 1500 px / 5 in = 300 dpi. ysize(3.64) keeps Stata's default 5.5x4
// aspect ratio (4 * 5/5.5) so the figure isn't squeezed horizontally and the
// inset legend doesn't collide with the plotted lines.
graph display exp1within, xsize(5) ysize(3.64)
graph export "figures/Figure2.jpg", name(exp1within) width(1500) replace
