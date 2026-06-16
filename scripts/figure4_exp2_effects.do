// ============================================================================
// Figure 4 — Experiment 2 (Debate)
// Estimated treatment effects on post-treatment favorability, relative to the
// no-information control.
//
// HOW TO RUN: in Stata, set the working directory to the repository root
// (the folder that contains /data, /scripts, /figures), e.g.
//     cd "/path/to/zenodo-replication"
// then:
//     do scripts/figure4_exp2_effects.do
// Requires the user-written -coefplot- and -estout- packages:
//     ssc install coefplot
//     ssc install estout
// Outputs: figures/Figure4.pdf and figures/Figure4.jpg
// ============================================================================

clear all

use "data/2debate_analysis.dta", clear

set scheme stmono1, permanently
graph set window fontface "Times New Roman"


// -------------------------------------------------------------------------------------------------
// Experiment 2 figure
// -------------------------------------------------------------------------------------------------


reg lfav_opin b1.condition
est sto exp2model


estout exp2model, ///
	cells("b(fmt(3)) se(fmt(3)) p(fmt(3))") ///
	nobase


coefplot exp2model, ///
	keep(2.condition 3.condition 4.condition) ///
	color(blue) ciopts(lc(blue)) ///
	yline(0, lc(black)) ///
	ylabel(#8, format(%3.1f) grid) ///
	ytitle("Effect on post-treatment favorability rating") ///
	coeflabels(3.condition = "Didactic style" 4.condition= "Debate style") ///
	vertical ///
	name(exp2, replace)


graph export "figures/Figure4.pdf", name(exp2) replace

// JPEG version: 5 inch width at 300 dpi (per JPART figure guidelines)
// xsize(5) sets the physical width to 5 inches; width(1500) gives 1500 px,
// so 1500 px / 5 in = 300 dpi. ysize(3.64) keeps Stata's default 5.5x4
// aspect ratio (4 * 5/5.5) so the figure isn't squeezed horizontally.
graph display exp2, xsize(5) ysize(3.64)
graph export "figures/Figure4.jpg", name(exp2) width(1500) replace
