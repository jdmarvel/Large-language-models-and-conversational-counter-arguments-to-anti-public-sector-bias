# Codebook

Variable-level documentation for the three datasets in this replication package. Each dataset corresponds to one experiment. For categorical variables, the coded values and their meanings are listed under **Values** (these are the Stata value labels stored in the `.dta` files).

Variable types: **numeric** (stored as a number; for categorical items the number maps to a label under *Values*) or **string/text** (free text, identifiers, or transcript content).

> Note on conversation variables: each chat is stored as a series of *turns*. `turnN_text` holds the message text, `turnN_role` its author, and `turnN_createdat` a Unix timestamp (seconds) for when it was sent. The number of turns varies by respondent, so higher-numbered turn variables are missing for shorter conversations.

## Contents

- [Experiment 1 — Anti-public (1anti_public_analysis.dta)](#experiment-1--antipublic-1antipublicanalysisdta) — 1,002 respondents, 77 variables
- [Experiment 2 — Debate (2debate_analysis.dta)](#experiment-2--debate-2debateanalysisdta) — 1,027 respondents, 135 variables
- [Experiment 3 — Motivated reasoning (3motivated_analysis.dta)](#experiment-3--motivated-reasoning-3motivatedanalysisdta) — 1,002 respondents, 114 variables


## Experiment 1 — Anti-public (1anti_public_analysis.dta)

**File:** `data/1anti_public_analysis.dta` · **Respondents (rows):** 1,002 · **Variables (columns):** 77

| Variable | Type | Description | Values |
|---|---|---|---|
| `participantid` | string/text | Respondent identifier (Cloud Connect / participant ID); unique per respondent. |  |
| `condition` | numeric | Experimental condition (between-subjects random assignment). See Values for the arms. | 0 = Control; 1 = Placebo; 2 = Treatment |
| `fedperf_pre` | numeric | Federal performance thermometer, pre-test |  |
| `newsfollow` | numeric | Follow news? 1 not at all -> 6 very closely |  |
| `usps_guess` | numeric | USPS guess |  |
| `fedex_guess` | numeric | FedEx guess |  |
| `fedtherm_nasa_pre` | numeric | NASA thermometer, pre-test |  |
| `fedtherm_irs_pre` | numeric | IRS thermometer, pre-test |  |
| `fedtherm_fedgov_pre` | numeric | Fed Gov thermometer, pre-test |  |
| `attention` | numeric | Attention check | 1 = About half on-line sources; 2 = Mostly on-line sources with some television and print news; 3 = Mostly on-line sources with some television and print news,About half on-line sources; 4 = Mostly television or print news with some on-line sources; 5 = On-line sources only; 6 = On-line sources only,About half on-line sources; 7 = On-line sources only,Mostly on-line sources with some television and print news |
| `gao` | numeric | Control: is $725 billion a lot, a little, or somewhere in between | 1 = A little; 2 = A lot; 3 = Somewhere in between |
| `aiusage` | numeric | How often do you use AI, 1 never --> 6 everyday |  |
| `fedperf_post` | numeric | Federal performance thermometer, post-test |  |
| `fedtherm_cdc_post` | numeric | CDC thermometer, post-test |  |
| `fedtherm_irs_post` | numeric | IRS thermometer, post-test |  |
| `fedtherm_fedgov_post` | numeric | Fed Gov thermometer, post-test |  |
| `wfa` | numeric | Agreement that waste, fraud, and abuse are a problem in the federal government (5-point Strongly disagree–Strongly agree scale). | 1 = Strongly disagree; 2 = Somewhat disagree; 3 = Neither agree nor disagree; 4 = Somewhat agree; 5 = Strongly agree |
| `aitrust` | numeric | How much do you trust AI? 1 not at all --> 6 completely |  |
| `ideo` | numeric | Political ideology 1 extremely liberal --> 7 extremely conservative |  |
| `party` | numeric | Party ID | 1 = Democrat; 2 = Independent; 3 = No preference; 4 = Other; 5 = Republican |
| `ishispanic` | numeric | Indicator (1/0): respondent identifies as Hispanic/Latino. |  |
| `race` | numeric | Race | 1 = American Indian/Native American or Alaska Native; 2 = Asian; 3 = Black or African American; 4 = Black or African American,American Indian/Native American or Alaska Native; 5 = Black or African American,Asian; 6 = Black or African American,Other; 7 = Native Hawaiian or Other Pacific Islander; 8 = Other; 9 = Prefer not to say; 10 = White or Caucasian; 11 = White or Caucasian,American Indian/Native American or Alaska Native; 12 = White or Caucasian,American Indian/Native American or Alaska Native,Asian; 13 = White or Caucasian,American Indian/Native American or Alaska Native,Native Hawaiian or Other Pacific Islander; 14 = White or Caucasian,Asian; 15 = White or Caucasian,Asian,Native Hawaiian or Other Pacific Islander; 16 = White or Caucasian,Black or African American; 17 = White or Caucasian,Black or African American,American Indian/Native American or Alaska Native; 18 = White or Caucasian,Black or African American,Asian; 19 = White or Caucasian,Other |
| `gender` | numeric | Gender | 1 = Female; 2 = Male; 3 = Non-binary / third gender; 4 = Prefer not to say |
| `educ` | numeric | RECODE of educ (Education level) | 1 = Less than high school; 2 = High school or equiv; 3 = Associate dergee; 4 = Some college; 5 = BA; 6 = Master's; 7 = PhD; 8 = Professional (JD, MD) |
| `duration` | numeric | Survey completion time, in seconds. |  |
| `responseid` | string/text | Qualtrics response identifier. |  |
| `chat_full` | string/text | Full concatenated transcript of the respondent's conversation with the LLM. |  |
| `chat_charlength` | numeric | Number of characters in the full chat transcript. |  |
| `chat_wordcount` | numeric | Number of words in the full chat transcript. |  |
| `turn1_text` | string/text | Full text of conversational turn 1 in the chat. |  |
| `turn1_role` | string/text | Role/author of turn 1 (e.g., user vs. assistant/system). |  |
| `turn1_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 1 was created; consecutive differences give per-turn elapsed time. |  |
| `turn2_text` | string/text | Full text of conversational turn 2 in the chat. |  |
| `turn2_role` | string/text | Role/author of turn 2 (e.g., user vs. assistant/system). |  |
| `turn2_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 2 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn3_nosearch` | numeric | Internal processing flag for turn 3 (no-search branch of the chat pipeline). |  |
| `turn3_text` | string/text | Full text of conversational turn 3 in the chat. |  |
| `turn3_role` | string/text | Role/author of turn 3 (e.g., user vs. assistant/system). |  |
| `turn3_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 3 was created; consecutive differences give per-turn elapsed time. |  |
| `turn3_thumb` | numeric | Thumbs up/down rating the respondent gave to the message at turn 3 (missing if not rated). |  |
| `turn4_text` | string/text | Full text of conversational turn 4 in the chat. |  |
| `turn4_role` | string/text | Role/author of turn 4 (e.g., user vs. assistant/system). |  |
| `turn4_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 4 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn5_nosearch` | numeric | Internal processing flag for turn 5 (no-search branch of the chat pipeline). |  |
| `turn5_text` | string/text | Full text of conversational turn 5 in the chat. |  |
| `turn5_role` | string/text | Role/author of turn 5 (e.g., user vs. assistant/system). |  |
| `turn5_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 5 was created; consecutive differences give per-turn elapsed time. |  |
| `turn5_thumb` | numeric | Thumbs up/down rating the respondent gave to the message at turn 5 (missing if not rated). |  |
| `turn6_text` | string/text | Full text of conversational turn 6 in the chat. |  |
| `turn6_role` | string/text | Role/author of turn 6 (e.g., user vs. assistant/system). |  |
| `turn6_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 6 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn7_nosearch` | numeric | Internal processing flag for turn 7 (no-search branch of the chat pipeline). |  |
| `turn7_text` | string/text | Full text of conversational turn 7 in the chat. |  |
| `turn7_role` | string/text | Role/author of turn 7 (e.g., user vs. assistant/system). |  |
| `turn7_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 7 was created; consecutive differences give per-turn elapsed time. |  |
| `turn7_thumb` | numeric | Thumbs up/down rating the respondent gave to the message at turn 7 (missing if not rated). |  |
| `turn8_text` | string/text | Full text of conversational turn 8 in the chat. |  |
| `turn8_role` | string/text | Role/author of turn 8 (e.g., user vs. assistant/system). |  |
| `turn8_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 8 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn9_nosearch` | numeric | Internal processing flag for turn 9 (no-search branch of the chat pipeline). |  |
| `turn9_text` | string/text | Full text of conversational turn 9 in the chat. |  |
| `turn9_role` | string/text | Role/author of turn 9 (e.g., user vs. assistant/system). |  |
| `turn9_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 9 was created; consecutive differences give per-turn elapsed time. |  |
| `turn9_thumb` | numeric | Thumbs up/down rating the respondent gave to the message at turn 9 (missing if not rated). |  |
| `turn10_text` | string/text | Full text of conversational turn 10 in the chat. |  |
| `turn10_role` | string/text | Role/author of turn 10 (e.g., user vs. assistant/system). |  |
| `turn10_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 10 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn11_nosearch` | numeric | Internal processing flag for turn 11 (no-search branch of the chat pipeline). |  |
| `turn11_text` | string/text | Full text of conversational turn 11 in the chat. |  |
| `turn11_role` | string/text | Role/author of turn 11 (e.g., user vs. assistant/system). |  |
| `turn11_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 11 was created; consecutive differences give per-turn elapsed time. |  |
| `turn11_thumb` | numeric | Thumbs up/down rating the respondent gave to the message at turn 11 (missing if not rated). |  |
| `isanythumbs` | numeric | Indicator (1/0): respondent used the thumbs up/down feedback feature at least once. |  |
| `n_thumbs` | numeric | Total number of thumbs (up or down) ratings the respondent gave during the chat. |  |
| `n_thumbs_up` | numeric | Number of thumbs-up ratings the respondent gave during the chat. |  |
| `n_thumbs_down` | numeric | Number of thumbs-down ratings the respondent gave during the chat. |  |
| `_merge` | numeric | Stata merge indicator from combining survey and chat-log files (see value labels). | 1 = Master only (1); 2 = Using only (2); 3 = Matched (3); 4 = Missing updated (4); 5 = Nonmissing conflict (5) |


## Experiment 2 — Debate (2debate_analysis.dta)

**File:** `data/2debate_analysis.dta` · **Respondents (rows):** 1,027 · **Variables (columns):** 135

| Variable | Type | Description | Values |
|---|---|---|---|
| `condition` | numeric | Experimental condition (between-subjects random assignment). See Values for the arms. | 1 = Control; 2 = One-shot ChatGPT message; 3 = Similarity discussion; 4 = Debate |
| `age` | numeric | Age |  |
| `educ` | numeric | Educational attainment (see Values). | 1 = Less than a high school diploma; 2 = High school graduate - high school diploma or the equivalent (for example: GED); 3 = Associate degree (for example: AA, AS); 4 = Some college, but no degree; 5 = Bachelor's degree (for example: BA, AB, BS); 6 = Master's degree (for example: MA, MS, MEng, MEd, MSW, MBA); 7 = Doctorate degree (for example: PhD, EdD); 8 = Professional degree (for example: MD, DDS, DVM, LLB, JD) |
| `male` | numeric | Indicator (1 = male, 0 = otherwise) derived from the gender item. |  |
| `occ` | numeric | Occupation Field | 1 = Agriculture, Food and Natural Resources; 2 = Architecture and Construction; 3 = Arts; 4 = Business Management & Administration; 5 = Education & Training; 6 = Finance; 7 = Government & Public Administration; 8 = Hospitality & Tourism; 9 = Information Technology; 10 = I’d Rather Not Say; 11 = Legal; 12 = Manufacturing; 13 = Marketing and Sales; 14 = Medicine; 15 = Military; 16 = Other; 17 = Policing; 18 = Retail; 19 = Retired; 20 = Science, Technology, Engineering & Mathematics; 21 = Social Sciences; 22 = Transportation, Distribution & Logistics |
| `marital` | numeric | Relationship/Marital Status | 1 = Divorced; 2 = In a civil union/partnership; 3 = In a relationship; 4 = I’d Rather Not Say; 5 = Married; 6 = Separated; 7 = Single; 8 = Widowed |
| `party` | numeric | Political Party | 1 = Democrat; 2 = Independent; 3 = Republican |
| `ethnicity` | numeric | Ethnicity | 1 = No, not of Hispanic, Latino, or Spanish origin; 2 = Yes, Cuban; 3 = Yes, Mexican, Mexican Am., Chicano; 4 = Yes, Puerto Rican; 5 = Yes, another Hispanic, Latino, or Spanish origin – (for example, Salvadoran, Dominican, Colombian, Guatemalan, Spaniard, Ecuadorian, etc.) |
| `income` | numeric | Household income bracket (see Values). | 1 = Less than $10,000; 2 = $10,000-$19,999; 3 = $20,000-$29,999; 4 = $30,000-$39,999; 5 = $40,000-$49,999; 6 = $50,000-$59,999; 7 = $60,000-$69,999; 8 = $70,000-$79,999; 9 = $80,000-$89,999; 10 = $90,000-$99,999; 11 = $100,000-$124,999; 12 = $125,000-$149,999; 13 = $150,000-$174,999; 14 = $175,000-$199,999; 15 = $200,000-$224,999; 16 = $225,000-$249,999; 17 = $250,000 or more; 18 = Prefer not to say |
| `race` | numeric | Race | 1 = American Indian or Alaska Native; 2 = An ethnicity not listed here; 3 = Asian Indian; 4 = Black or African American; 5 = Chinese; 6 = Filipino; 7 = Hawaiian; 8 = Japanese; 9 = Korean; 10 = Vietnamese; 11 = White |
| `employ` | numeric | Employment Status | 1 = Business Owner; 2 = Full-time; 3 = Not in paid work (e.g., homemaker, disabled); 4 = Part-time; 5 = Prefer not to say; 6 = Retired; 7 = Student; 8 = Unemployed |
| `ideo` | numeric | Political ideology (see Values). | 1 = Extremely conservative; 2 = Conservative; 3 = Slightly conservative; 4 = Moderate, middle of the road; 5 = Slightly liberal; 6 = Liberal; 7 = Extremely liberal; 99 = Haven't thought much about this |
| `isllm` | numeric | Indicator/branching flag used in data processing (1/0). |  |
| `convotype` | numeric | Conversation type within the interactive-chat arms (see Values). | 1 = Discussion re: similarity; 2 = Debate |
| `duration` | numeric | Survey completion time, in seconds. |  |
| `mfav` | numeric | agencies_mostpos | 1 = Centers for Disease Control and Prevention (CDC); 2 = Department of Defense (DOD); 3 = Department of Homeland Security (DHS); 4 = Environmental Protection Agency (EPA); 5 = Federal Bureau of Investigation (FBI); 6 = Federal Emergency Management Agency (FEMA); 7 = Internal Revenue Service (IRS); 8 = National Aeronautics and Space Administration (NASA); 9 = Social Security Administration (SSA); 10 = United States Postal Service (USPS) |
| `lfav` | numeric | agencies_mostneg | 1 = Centers for Disease Control and Prevention (CDC); 2 = Department of Defense (DOD); 3 = Department of Homeland Security (DHS); 4 = Environmental Protection Agency (EPA); 5 = Federal Bureau of Investigation (FBI); 6 = Federal Emergency Management Agency (FEMA); 7 = Internal Revenue Service (IRS); 8 = National Aeronautics and Space Administration (NASA); 9 = Social Security Administration (SSA); 10 = United States Postal Service (USPS) |
| `mfavpri` | numeric | companies_mostpos | 1 = Amazon; 2 = Apple; 3 = Costco; 4 = FedEx; 5 = General Motors; 6 = Google; 7 = Home Depot; 8 = McDonald's; 9 = Tesla; 10 = Walmart |
| `lfavpri` | numeric | companies_mostneg | 1 = Amazon; 2 = Apple; 3 = Costco; 4 = FedEx; 5 = General Motors; 6 = Google; 7 = Home Depot; 8 = McDonald's; 9 = Tesla; 10 = Walmart |
| `probeneg_pre` | string/text | Pre-treatment probe of negative views (probeneg_pre). |  |
| `attention` | numeric | attention | 1 = About half on-line sources; 2 = Mostly on-line sources with some television and print news; 3 = Mostly on-line sources with some television and print news,About half on-line sources; 4 = Mostly on-line sources with some television and print news,About half on-line sources,Mostly television or print news with some on-line sources; 5 = Mostly television or print news with some on-line sources; 6 = On-line sources only; 7 = On-line sources only,About half on-line sources; 8 = On-line sources only,About half on-line sources,Mostly television or print news with some on-line sources; 9 = On-line sources only,About half on-line sources,Television or print news only; 10 = On-line sources only,Mostly on-line sources with some television and print news; 11 = On-line sources only,Mostly on-line sources with some television and print news,About half on-line sources |
| `oneshot_text` | string/text | Open-text response to the one-shot ChatGPT message condition (chatresponse). |  |
| `oneshot_int` | numeric | Rated interest in the one-shot ChatGPT message (see Values). | 1 = Not at all interesting; 2 = Somewhat interesting; 3 = Interesting; 4 = Very interesting; 5 = Extremely interesting |
| `ist1nobonus` | numeric | Branching/assignment flag: task 1, no-bonus arm. |  |
| `ist1withbonus` | numeric | Branching/assignment flag: task 1, with-bonus arm. |  |
| `ist1` | numeric | Branching/assignment flag for task 1. |  |
| `ist2nobonus` | numeric | Branching/assignment flag: task 2, no-bonus arm. |  |
| `ist2withbonus` | numeric | Branching/assignment flag: task 2, with-bonus arm. |  |
| `ist2` | numeric | Branching/assignment flag for task 2. |  |
| `isbonus` | numeric | Indicator/branching flag used in data processing (1/0). |  |
| `ischatprob` | numeric | Indicator/branching flag used in data processing (1/0). |  |
| `ischatprob_text` | string/text | Open-text response describing any problems with the chatbot (chatbotFeedback_2_TEXT). |  |
| `aiusage` | numeric | Self-reported frequency of AI use (see Values). | 1 = Never; 2 = Once or a few times a month; 3 = Once a week; 4 = A few times a week; 5 = Everyday; 6 = Multiple times everyday |
| `lfav_opin` | numeric | Favorability/opinion rating of the federal agency the respondent rated least favorably (see Values for the scale). | 1 = Very unfavorable; 2 = Somewhat unfavorable; 3 = Neither favorable nor unfavorable; 4 = Somewhat favorable; 5 = Very favorable |
| `lfav_spend` | numeric | Preferred change in spending of the federal agency the respondent rated least favorably (see Values for the scale). | 1 = Decreased a lot; 2 = Decreased a little; 3 = Kept the same; 4 = Increased a little; 5 = Increased a lot |
| `mfav_opin` | numeric | Favorability/opinion rating of the federal agency the respondent rated most favorably (see Values for the scale). | 1 = Very unfavorable; 2 = Somewhat unfavorable; 3 = Neither favorable nor unfavorable; 4 = Somewhat favorable; 5 = Very favorable |
| `mfavpri_opin` | numeric | Favorability/opinion rating of the private company the respondent rated most favorably (see Values for the scale). | 1 = Very unfavorable; 2 = Somewhat unfavorable; 3 = Neither favorable nor unfavorable; 4 = Somewhat favorable; 5 = Very favorable |
| `lfavpri_opin` | numeric | Favorability/opinion rating of the private company the respondent rated least favorably (see Values for the scale). | 1 = Very unfavorable; 2 = Somewhat unfavorable; 3 = Neither favorable nor unfavorable; 4 = Somewhat favorable; 5 = Very favorable |
| `lfav_imp` | numeric | Perceived importance of the federal agency the respondent rated least favorably (see Values for the scale). | 1 = Not at all important; 2 = Somewhat important; 3 = Important; 4 = Very important; 5 = Extremely important |
| `mfav_imp` | numeric | Perceived importance of the federal agency the respondent rated most favorably (see Values for the scale). | 1 = Not at all important; 2 = Somewhat important; 3 = Important; 4 = Very important; 5 = Extremely important |
| `mfav_spend` | numeric | Preferred change in spending of the federal agency the respondent rated most favorably (see Values for the scale). | 1 = Decreased a lot; 2 = Decreased a little; 3 = Kept the same; 4 = Increased a little; 5 = Increased a lot |
| `mfavpri_imp` | numeric | Perceived importance of the private company the respondent rated most favorably (see Values for the scale). | 1 = Not at all important; 2 = Somewhat important; 3 = Important; 4 = Very important; 5 = Extremely important |
| `lfavpri_imp` | numeric | Perceived importance of the private company the respondent rated least favorably (see Values for the scale). | 1 = Not at all important; 2 = Somewhat important; 3 = Important; 4 = Very important; 5 = Extremely important |
| `mfav_potperf` | numeric | chosenpotential_post_1 |  |
| `lfav_potperf` | numeric | chosenpotential_post_2 |  |
| `fed_potperf` | numeric | fedpotential_post_1 |  |
| `similar` | numeric | Rated similarity to the LLM's expressed position (see Values). | 1 = Not at all similar; 2 = Somewhat similar; 3 = Similar; 4 = Very similar; 5 = Extremely similar |
| `imagine_diff_1` | string/text | Open response 1 to the 'imagine how the two agencies differ' prompt (mini-experiment). |  |
| `imagine_diff_2` | string/text | Open response 2 to the 'imagine how the two agencies differ' prompt (mini-experiment). |  |
| `imagine_diff_3` | string/text | Open response 3 to the 'imagine how the two agencies differ' prompt (mini-experiment). |  |
| `isimagine_diff` | numeric | Indicator/branching flag used in data processing (1/0). |  |
| `lfav_therm` | numeric | miniexper_therm_t1_1 |  |
| `mfav_therm` | numeric | miniexper_therm_t1_2 |  |
| `imagine_better_1` | string/text | Open response 1 to the 'imagine how the agency could be better' prompt (mini-experiment). |  |
| `imagine_better_2` | string/text | Open response 2 to the 'imagine how the agency could be better' prompt (mini-experiment). |  |
| `imagine_better_3` | string/text | Open response 3 to the 'imagine how the agency could be better' prompt (mini-experiment). |  |
| `isimagine_better` | numeric | Indicator/branching flag used in data processing (1/0). |  |
| `isimagine_control` | numeric | Indicator/branching flag used in data processing (1/0). |  |
| `ismini` | numeric | Indicator/branching flag used in data processing (1/0). |  |
| `ismini_imagine` | numeric | Indicator/branching flag used in data processing (1/0). |  |
| `ismini_condition` | numeric | Sub-condition of the embedded mini-experiment (imagining manipulation); see Values. | 1 = No imagining; 2 = Imagine differences; 3 = Imagine better |
| `ist1quiz` | numeric | Indicator: respondent saw the task-1 comprehension quiz. |  |
| `ist1quizcorrect` | numeric | Indicator: respondent answered the task-1 comprehension quiz correctly. |  |
| `interest` | numeric | Rated interest in the conversation (see Values). | 1 = Not at all interesting; 2 = Somewhat interesting; 3 = Interesting; 4 = Very interesting; 5 = Extremely interesting |
| `informative` | numeric | Rated how informative the conversation was (see Values). | 1 = Not at all informative; 2 = Somewhat informative; 3 = Informative; 4 = Very informative; 5 = Extremely informative |
| `persuasive` | numeric | Rated how persuasive the conversation was (see Values). | 1 = Not at all persuasive; 2 = Somewhat persuasive; 3 = Persuasive; 4 = Very persuasive; 5 = Extremely persuasive |
| `tailoring` | numeric | tailoring | 1 = It convinced me to see its side of things; 2 = It followed my lead, allowing me to steer the conversation; 3 = It helped me to see things from a different point of view than my own; 4 = It is hard to describe in just one sentence; 5 = It steered the conversation in its own direction; 6 = It was hard to persuade it to see my point of view; 7 = It was too long-winded |
| `enjoyable` | numeric | How enjoyable the interaction was (see Values). | 1 = Not at all enjoyable; 2 = Somewhat enjoyable; 3 = Enjoyable; 4 = Very enjoyable; 5 = Extremely enjoyable |
| `frustrating` | numeric | How frustrating the interaction was (see Values). | 1 = Not at all frustrating; 2 = Somewhat frustrating; 3 = Frustrating; 4 = Very frustrating; 5 = Extremely frustrating |
| `fair` | numeric | Rated how fair the conversation was (see Values). | 1 = Not at all fair; 2 = Somewhat fair; 3 = Fair; 4 = Very fair; 5 = Extremely fair |
| `follow` | numeric | Whether the respondent would follow the LLM's recommendation (see Values). | 1 = No, definitely not; 2 = No, probably not; 3 = Maybe; 4 = Yes, probably; 5 = Yes, definitely |
| `participantid` | string/text | Respondent identifier (Cloud Connect / participant ID); unique per respondent. |  |
| `assignmentid` | string/text | Cloud Connect assignment identifier. |  |
| `projectid` | string/text | Cloud Connect project identifier. |  |
| `bot` | numeric | reCAPTCHA score (Q_RecaptchaScore); values closer to 1 indicate a more likely human respondent. |  |
| `isbot` | numeric | Indicator (1/0): response flagged as a likely bot based on the reCAPTCHA score. |  |
| `responseid` | string/text | Qualtrics response identifier. |  |
| `recordeddate` | string/text | Date/time the Qualtrics response was recorded. |  |
| `chat_full` | string/text | Full concatenated transcript of the respondent's conversation with the LLM. |  |
| `chat_charlength` | numeric | Number of characters in the full chat transcript. |  |
| `chat_wordcount` | numeric | Number of words in the full chat transcript. |  |
| `n_turns` | numeric | Number of conversational turns in the chat transcript. |  |
| `turn1_text` | string/text | Full text of conversational turn 1 in the chat. |  |
| `turn1_role` | string/text | Role/author of turn 1 (e.g., user vs. assistant/system). |  |
| `turn1_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 1 was created; consecutive differences give per-turn elapsed time. |  |
| `turn2_text` | string/text | Full text of conversational turn 2 in the chat. |  |
| `turn2_role` | string/text | Role/author of turn 2 (e.g., user vs. assistant/system). |  |
| `turn2_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 2 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn3_nosearch` | numeric | Internal processing flag for turn 3 (no-search branch of the chat pipeline). |  |
| `turn3_text` | string/text | Full text of conversational turn 3 in the chat. |  |
| `turn3_role` | string/text | Role/author of turn 3 (e.g., user vs. assistant/system). |  |
| `turn3_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 3 was created; consecutive differences give per-turn elapsed time. |  |
| `turn4_text` | string/text | Full text of conversational turn 4 in the chat. |  |
| `turn4_role` | string/text | Role/author of turn 4 (e.g., user vs. assistant/system). |  |
| `turn4_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 4 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn5_nosearch` | numeric | Internal processing flag for turn 5 (no-search branch of the chat pipeline). |  |
| `turn5_text` | string/text | Full text of conversational turn 5 in the chat. |  |
| `turn5_role` | string/text | Role/author of turn 5 (e.g., user vs. assistant/system). |  |
| `turn5_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 5 was created; consecutive differences give per-turn elapsed time. |  |
| `turn6_text` | string/text | Full text of conversational turn 6 in the chat. |  |
| `turn6_role` | string/text | Role/author of turn 6 (e.g., user vs. assistant/system). |  |
| `turn6_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 6 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn7_nosearch` | numeric | Internal processing flag for turn 7 (no-search branch of the chat pipeline). |  |
| `turn7_text` | string/text | Full text of conversational turn 7 in the chat. |  |
| `turn7_role` | string/text | Role/author of turn 7 (e.g., user vs. assistant/system). |  |
| `turn7_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 7 was created; consecutive differences give per-turn elapsed time. |  |
| `turn8_text` | string/text | Full text of conversational turn 8 in the chat. |  |
| `turn8_role` | string/text | Role/author of turn 8 (e.g., user vs. assistant/system). |  |
| `turn8_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 8 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn9_nosearch` | numeric | Internal processing flag for turn 9 (no-search branch of the chat pipeline). |  |
| `turn9_text` | string/text | Full text of conversational turn 9 in the chat. |  |
| `turn9_role` | string/text | Role/author of turn 9 (e.g., user vs. assistant/system). |  |
| `turn9_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 9 was created; consecutive differences give per-turn elapsed time. |  |
| `turn10_text` | string/text | Full text of conversational turn 10 in the chat. |  |
| `turn10_role` | string/text | Role/author of turn 10 (e.g., user vs. assistant/system). |  |
| `turn10_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 10 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn11_nosearch` | numeric | Internal processing flag for turn 11 (no-search branch of the chat pipeline). |  |
| `turn11_text` | string/text | Full text of conversational turn 11 in the chat. |  |
| `turn11_role` | string/text | Role/author of turn 11 (e.g., user vs. assistant/system). |  |
| `turn11_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 11 was created; consecutive differences give per-turn elapsed time. |  |
| `turn12_text` | string/text | Full text of conversational turn 12 in the chat. |  |
| `turn12_role` | string/text | Role/author of turn 12 (e.g., user vs. assistant/system). |  |
| `turn12_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 12 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn13_nosearch` | numeric | Internal processing flag for turn 13 (no-search branch of the chat pipeline). |  |
| `turn13_text` | string/text | Full text of conversational turn 13 in the chat. |  |
| `turn13_role` | string/text | Role/author of turn 13 (e.g., user vs. assistant/system). |  |
| `turn13_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 13 was created; consecutive differences give per-turn elapsed time. |  |
| `turn14_text` | string/text | Full text of conversational turn 14 in the chat. |  |
| `turn14_role` | string/text | Role/author of turn 14 (e.g., user vs. assistant/system). |  |
| `turn14_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 14 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn15_nosearch` | numeric | Internal processing flag for turn 15 (no-search branch of the chat pipeline). |  |
| `turn15_text` | string/text | Full text of conversational turn 15 in the chat. |  |
| `turn15_role` | string/text | Role/author of turn 15 (e.g., user vs. assistant/system). |  |
| `turn15_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 15 was created; consecutive differences give per-turn elapsed time. |  |
| `turn11_osr3` | string/text | Auxiliary open-/short-response field captured at turn 11 (processing field). |  |


## Experiment 3 — Motivated reasoning (3motivated_analysis.dta)

**File:** `data/3motivated_analysis.dta` · **Respondents (rows):** 1,002 · **Variables (columns):** 114

| Variable | Type | Description | Values |
|---|---|---|---|
| `duration` | numeric | Survey completion time, in seconds. |  |
| `lfav` | numeric | agyneg | 1 = Centers for Disease Control and Prevention (CDC); 2 = Department of Defense (DOD); 3 = Department of Education; 4 = Department of Homeland Security (DHS); 5 = Environmental Protection Agency (EPA); 6 = Federal Bureau of Investigation (FBI); 7 = Federal Emergency Management Agency (FEMA); 8 = Internal Revenue Service (IRS); 9 = National Aeronautics and Space Administration (NASA); 10 = Social Security Administration (SSA) |
| `mfav` | numeric | agypos | 1 = Centers for Disease Control and Prevention (CDC); 2 = Department of Defense (DOD); 3 = Department of Education; 4 = Department of Homeland Security (DHS); 5 = Environmental Protection Agency (EPA); 6 = Federal Bureau of Investigation (FBI); 7 = Federal Emergency Management Agency (FEMA); 8 = Internal Revenue Service (IRS); 9 = National Aeronautics and Space Administration (NASA); 10 = Social Security Administration (SSA) |
| `lfav_opin_pre` | numeric | Favorability/opinion rating, pre-treatment of the federal agency the respondent rated least favorably (see Values for the scale). | 1 = Very negative; 2 = Negative; 3 = Slightly negative; 4 = Neither positive nor negative; 5 = Slightly positive; 6 = Positive; 7 = Very positive |
| `mfav_opin_pre` | numeric | Favorability/opinion rating, pre-treatment of the federal agency the respondent rated most favorably (see Values for the scale). | 1 = Very negative; 2 = Negative; 3 = Slightly negative; 4 = Neither positive nor negative; 5 = Slightly positive; 6 = Positive; 7 = Very positive |
| `attention` | numeric | attention | 1 = About half on-line sources; 2 = Mostly on-line sources with some television and print news; 3 = Mostly television or print news with some on-line sources; 4 = On-line sources only; 5 = On-line sources only,About half on-line sources; 6 = On-line sources only,Mostly on-line sources with some television and print news; 7 = Television or print news only |
| `condition` | numeric | Experimental condition (between-subjects random assignment). See Values for the arms. | 1 = Strong counter-argument; 2 = Weak counter-argument; 3 = Strong yes-man; 4 = Weak yes-man |
| `age` | numeric | Age |  |
| `educ` | numeric | Educational attainment (see Values). | 1 = Less than a high school diploma; 2 = High school graduate - high school diploma or the equivalent (for example: GED); 3 = Associate degree (for example: AA, AS); 4 = Some college, but no degree; 5 = Bachelor's degree (for example: BA, AB, BS); 6 = Master's degree (for example: MA, MS, MEng, MEd, MSW, MBA); 7 = Doctorate degree (for example: PhD, EdD); 8 = Professional degree (for example: MD, DDS, DVM, LLB, JD) |
| `male` | numeric | Indicator (1 = male, 0 = otherwise) derived from the gender item. |  |
| `occ` | numeric | Occupation Field | 1 = Agriculture, Food and Natural Resources; 2 = Architecture and Construction; 3 = Arts; 4 = Business Management & Administration; 5 = Education & Training; 6 = Finance; 7 = Government & Public Administration; 8 = Hospitality & Tourism; 9 = Information Technology; 10 = I’d Rather Not Say; 11 = Legal; 12 = Manufacturing; 13 = Marketing and Sales; 14 = Medicine; 15 = Military; 16 = Other; 17 = Policing; 18 = Retail; 19 = Retired; 20 = Science, Technology, Engineering & Mathematics; 21 = Social Sciences; 22 = Transportation, Distribution & Logistics |
| `marital` | numeric | Relationship/Marital Status | 1 = Divorced; 2 = In a civil union/partnership; 3 = In a relationship; 4 = I’d Rather Not Say; 5 = Married; 6 = Separated; 7 = Single; 8 = Widowed |
| `party` | numeric | Political Party | 1 = Democrat; 2 = Independent; 3 = Republican |
| `ethnicity` | numeric | Ethnicity | 1 = No, not of Hispanic, Latino, or Spanish origin; 2 = Yes, Cuban; 3 = Yes, Mexican, Mexican Am., Chicano; 4 = Yes, Puerto Rican; 5 = Yes, another Hispanic, Latino, or Spanish origin – (for example, Salvadoran, Dominican, Colombian, Guatemalan, Spaniard, Ecuadorian, etc.) |
| `income` | numeric | Household income bracket (see Values). | 1 = Less than $10,000; 2 = $10,000-$19,999; 3 = $20,000-$29,999; 4 = $30,000-$39,999; 5 = $40,000-$49,999; 6 = $50,000-$59,999; 7 = $60,000-$69,999; 8 = $70,000-$79,999; 9 = $80,000-$89,999; 10 = $90,000-$99,999; 11 = $100,000-$124,999; 12 = $125,000-$149,999; 13 = $150,000-$174,999; 14 = $175,000-$199,999; 15 = $200,000-$224,999; 16 = $225,000-$249,999; 17 = $250,000 or more; 18 = Prefer not to say |
| `race` | numeric | Race | 1 = American Indian or Alaska Native; 2 = An ethnicity not listed here; 3 = Asian Indian; 4 = Black or African American; 5 = Chinese; 6 = Filipino; 7 = Japanese; 8 = Korean; 9 = Vietnamese; 10 = White |
| `employ` | numeric | Employment Status | 1 = Business Owner; 2 = Full-time; 3 = Not in paid work (e.g., homemaker, disabled); 4 = Part-time; 5 = Prefer not to say; 6 = Retired; 7 = Student; 8 = Unemployed |
| `ideo` | numeric | Political ideology (see Values). | 1 = Extremely conservative; 2 = Conservative; 3 = Slightly conservative; 4 = Moderate, middle of the road; 5 = Slightly liberal; 6 = Liberal; 7 = Extremely liberal; 99 = Haven't thought much about this |
| `aiusage` | numeric | Self-reported frequency of AI use (see Values). | 1 = Never; 2 = Once or a few times a month; 3 = Once a week; 4 = A few times a week; 5 = Everyday; 6 = Multiple times everyday |
| `lfav_opin_post` | numeric | Favorability/opinion rating, post-treatment of the federal agency the respondent rated least favorably (see Values for the scale). | 1 = Very negative; 2 = Negative; 3 = Slightly negative; 4 = Neither positive nor negative; 5 = Slightly positive; 6 = Positive; 7 = Very positive |
| `mfav_opin_post` | numeric | Favorability/opinion rating, post-treatment of the federal agency the respondent rated most favorably (see Values for the scale). | 1 = Very negative; 2 = Negative; 3 = Slightly negative; 4 = Neither positive nor negative; 5 = Slightly positive; 6 = Positive; 7 = Very positive |
| `lfav_perf` | numeric | perf_post_1 |  |
| `mfav_perf` | numeric | perf_post_2 |  |
| `lfav_spend` | numeric | Preferred change in spending of the federal agency the respondent rated least favorably (see Values for the scale). | 1 = Decreased a lot; 2 = Decreased a little; 3 = Kept the same; 4 = Increased a little; 5 = Increased a lot |
| `mfav_spend` | numeric | Preferred change in spending of the federal agency the respondent rated most favorably (see Values for the scale). | 1 = Decreased a lot; 2 = Decreased a little; 3 = Kept the same; 4 = Increased a little; 5 = Increased a lot |
| `knowledge` | numeric | Perceived knowledgeability of the LLM (see Values). | 1 = Not at all knowledgeable; 2 = Somewhat knowledgeable; 3 = Knowledgeable; 4 = Very knowledgeable; 5 = Extremely knowledgeable |
| `informed` | numeric | Perceived how well-informed the LLM was (see Values). | 1 = Not at all well-informed; 2 = Somewhat well-informed; 3 = Well-informed; 4 = Very well-informed; 5 = Extremely well-informed |
| `believable` | numeric | Perceived believability of the LLM (see Values). | 1 = Not at all believable; 2 = Somewhat believable; 3 = Believable; 4 = Very believable; 5 = Extremely believable |
| `futureinfo` | numeric | Willingness to seek information from the LLM in future (see Values). | 1 = No, definitely not; 2 = No, probably not; 3 = Maybe; 4 = Yes, probably; 5 = Yes, definitely |
| `trustworthy` | numeric | Perceived trustworthiness of the LLM (see Values). | 1 = Not at all trustworthy; 2 = Somewhat trustworthy; 3 = Trustworthy; 4 = Very trustworthy; 5 = Extremely trustworthy |
| `enjoyable` | numeric | How enjoyable the interaction was (see Values). | 1 = Not at all enjoyable; 2 = Somewhat enjoyable; 3 = Enjoyable; 4 = Very enjoyable; 5 = Extremely enjoyable |
| `biased` | numeric | Perceived bias of the LLM (see Values). | 1 = Not at all biased; 2 = Somewhat biased; 3 = Biased; 4 = Very biased; 5 = Extremely biased |
| `recommend` | numeric | Willingness to recommend the LLM to others (see Values). | 1 = No, definitely not; 2 = No, probably not; 3 = Maybe; 4 = Yes, probably; 5 = Yes, definitely |
| `frustrating` | numeric | How frustrating the interaction was (see Values). | 1 = Not at all frustrating; 2 = Somewhat frustrating; 3 = Frustrating; 4 = Very frustrating; 5 = Extremely frustrating |
| `confident` | numeric | Respondent's confidence (see Values). | 1 = Not at all confident; 2 = Somewhat confident; 3 = Confident; 4 = Very confident; 5 = Extremely confident |
| `mini` | numeric | Sub-condition of the embedded mini-experiment (imagining manipulation); see Values. | 1 = No imagine; 2 = Imagine different; 3 = Imagine better |
| `uspsguess` | numeric | Respondent's guess about the U.S. Postal Service (USPS) item. |  |
| `uspsspend` | numeric | Respondent's preferred change in USPS spending. |  |
| `uspstherm` | numeric | USPS feeling-thermometer rating. |  |
| `imaginediff_1` | string/text | Open response 1 to the 'imagine how the two agencies differ' prompt (mini-experiment). |  |
| `imaginediff_2` | string/text | Open response 2 to the 'imagine how the two agencies differ' prompt (mini-experiment). |  |
| `imaginediff_3` | string/text | Open response 3 to the 'imagine how the two agencies differ' prompt (mini-experiment). |  |
| `imaginebetter_1` | string/text | Open response 1 to the 'imagine how the agency could be better' prompt (mini-experiment). |  |
| `imaginebetter_2` | string/text | Open response 2 to the 'imagine how the agency could be better' prompt (mini-experiment). |  |
| `imaginebetter_3` | string/text | Open response 3 to the 'imagine how the agency could be better' prompt (mini-experiment). |  |
| `participantid` | string/text | Respondent identifier (Cloud Connect / participant ID); unique per respondent. |  |
| `assignmentid` | string/text | Cloud Connect assignment identifier. |  |
| `projectid` | string/text | Cloud Connect project identifier. |  |
| `bot` | numeric | reCAPTCHA score (Q_RecaptchaScore); values closer to 1 indicate a more likely human respondent. |  |
| `isbot` | numeric | Indicator (1/0): response flagged as a likely bot based on the reCAPTCHA score. |  |
| `isdup` | numeric | Indicator: response flagged as a likely duplicate respondent (Q_DuplicateRespondent). |  |
| `chat_full` | string/text | Full concatenated transcript of the respondent's conversation with the LLM. |  |
| `chat_charlength` | numeric | Number of characters in the full chat transcript. |  |
| `chat_wordcount` | numeric | Number of words in the full chat transcript. |  |
| `n_turns` | numeric | Number of conversational turns in the chat transcript. |  |
| `turn1_text` | string/text | Full text of conversational turn 1 in the chat. |  |
| `turn1_role` | string/text | Role/author of turn 1 (e.g., user vs. assistant/system). |  |
| `turn1_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 1 was created; consecutive differences give per-turn elapsed time. |  |
| `turn2_text` | string/text | Full text of conversational turn 2 in the chat. |  |
| `turn2_role` | string/text | Role/author of turn 2 (e.g., user vs. assistant/system). |  |
| `turn2_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 2 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn3_nosearch` | numeric | Internal processing flag for turn 3 (no-search branch of the chat pipeline). |  |
| `turn3_text` | string/text | Full text of conversational turn 3 in the chat. |  |
| `turn3_role` | string/text | Role/author of turn 3 (e.g., user vs. assistant/system). |  |
| `turn3_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 3 was created; consecutive differences give per-turn elapsed time. |  |
| `turn4_text` | string/text | Full text of conversational turn 4 in the chat. |  |
| `turn4_role` | string/text | Role/author of turn 4 (e.g., user vs. assistant/system). |  |
| `turn4_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 4 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn5_nosearch` | numeric | Internal processing flag for turn 5 (no-search branch of the chat pipeline). |  |
| `turn5_text` | string/text | Full text of conversational turn 5 in the chat. |  |
| `turn5_role` | string/text | Role/author of turn 5 (e.g., user vs. assistant/system). |  |
| `turn5_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 5 was created; consecutive differences give per-turn elapsed time. |  |
| `turn6_text` | string/text | Full text of conversational turn 6 in the chat. |  |
| `turn6_role` | string/text | Role/author of turn 6 (e.g., user vs. assistant/system). |  |
| `turn6_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 6 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn7_nosearch` | numeric | Internal processing flag for turn 7 (no-search branch of the chat pipeline). |  |
| `turn7_text` | string/text | Full text of conversational turn 7 in the chat. |  |
| `turn7_role` | string/text | Role/author of turn 7 (e.g., user vs. assistant/system). |  |
| `turn7_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 7 was created; consecutive differences give per-turn elapsed time. |  |
| `turn8_text` | string/text | Full text of conversational turn 8 in the chat. |  |
| `turn8_role` | string/text | Role/author of turn 8 (e.g., user vs. assistant/system). |  |
| `turn8_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 8 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn9_nosearch` | numeric | Internal processing flag for turn 9 (no-search branch of the chat pipeline). |  |
| `turn9_text` | string/text | Full text of conversational turn 9 in the chat. |  |
| `turn9_role` | string/text | Role/author of turn 9 (e.g., user vs. assistant/system). |  |
| `turn9_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 9 was created; consecutive differences give per-turn elapsed time. |  |
| `turn10_text` | string/text | Full text of conversational turn 10 in the chat. |  |
| `turn10_role` | string/text | Role/author of turn 10 (e.g., user vs. assistant/system). |  |
| `turn10_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 10 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn11_nosearch` | numeric | Internal processing flag for turn 11 (no-search branch of the chat pipeline). |  |
| `turn11_text` | string/text | Full text of conversational turn 11 in the chat. |  |
| `turn11_role` | string/text | Role/author of turn 11 (e.g., user vs. assistant/system). |  |
| `turn11_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 11 was created; consecutive differences give per-turn elapsed time. |  |
| `turn12_text` | string/text | Full text of conversational turn 12 in the chat. |  |
| `turn12_role` | string/text | Role/author of turn 12 (e.g., user vs. assistant/system). |  |
| `turn12_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 12 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn13_nosearch` | numeric | Internal processing flag for turn 13 (no-search branch of the chat pipeline). |  |
| `turn13_text` | string/text | Full text of conversational turn 13 in the chat. |  |
| `turn13_role` | string/text | Role/author of turn 13 (e.g., user vs. assistant/system). |  |
| `turn13_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 13 was created; consecutive differences give per-turn elapsed time. |  |
| `turn14_text` | string/text | Full text of conversational turn 14 in the chat. |  |
| `turn14_role` | string/text | Role/author of turn 14 (e.g., user vs. assistant/system). |  |
| `turn14_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 14 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn15_nosearch` | numeric | Internal processing flag for turn 15 (no-search branch of the chat pipeline). |  |
| `turn15_text` | string/text | Full text of conversational turn 15 in the chat. |  |
| `turn15_role` | string/text | Role/author of turn 15 (e.g., user vs. assistant/system). |  |
| `turn15_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 15 was created; consecutive differences give per-turn elapsed time. |  |
| `turn16_text` | string/text | Full text of conversational turn 16 in the chat. |  |
| `turn16_role` | string/text | Role/author of turn 16 (e.g., user vs. assistant/system). |  |
| `turn16_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 16 was created; consecutive differences give per-turn elapsed time. |  |
| `isturn17_nosearch` | numeric | Internal processing flag for turn 17 (no-search branch of the chat pipeline). |  |
| `turn17_text` | string/text | Full text of conversational turn 17 in the chat. |  |
| `turn17_role` | string/text | Role/author of turn 17 (e.g., user vs. assistant/system). |  |
| `turn17_createdat` | numeric | Unix timestamp (seconds since epoch) when turn 17 was created; consecutive differences give per-turn elapsed time. |  |
