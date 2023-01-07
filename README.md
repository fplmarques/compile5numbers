# compile5numbers
This script was created to compile Tukey Five-Number Summaries to be used in the context of Cestode taxonomic descriptions.

## Justification: Cestode Taxonomy and Statistics

As show above, like other tools available out there, WormBox compute summary statistics from your images. This summary includes measures of central tendencies and dispersion of your data, as well as averages of pseudoreplicated data. All these concepects will be discussed below. If you gathered morphometric data and summarized the information using statistics you have to think what those values mean to you – truelly what can you do with them. Are they simply a description of your data? or Are they sample statistics from which you are trying to estimate parameters of population? These are two fundamentally different approaches in statistics pertaining to descriptive and inferential statitistics – respectively. This dichotomy may, at first glance, be trivial and uninteresting, but for statistical theory they are not! If you put these questions into the context of taxonomic descriptions, and you state:

_<div align="center">"Mature proglottids 10–17 (12±3; 6) in number, 728–1,892 (1,153±228; 47) long by 291–586 (460±70; 47) wide, .."</div>_

You should then consider whether these statistical statements only describe your data (i.e., the morphometric attributes of a type series, for instance) or they were calculated with the intent of estimate values of all individuals that belong to the taxon you just described – therefore, potentially diagnostic characters. If you consider them to be descriptive statistics, these numbers only describe the distribution of what is shown before us and, as such, cannot be used to draw any specific conclusions based on any hypothesis or test (Klazema, 2014). On the other hand, if they were meant to be used as an inferential statistics tool, these numbers must come from one or more representative samples from the set you are interested and subsequently be used to test statistical hypotheses.
This rational has serious implications on the use of morphometric data as diagnostic characters. If the statistics you reported were summarized under the premise they were only descriptive, it would be inconsistent to use them as diagnostic characters. To be used as diagnostic characters, it is implicit that your samples allow valid estimation of population parameters that represent your taxon concept.
The present day taxonomic literature on cestodes (as in many other groups) are flooded with summary statistics. If you look historically, you will find a clear trend in which throughout the years new variables – structures measured and/or counted – have been added into descriptions; as if a well performed taxonomic description depended on larger numbers of assessed variables! On the other hand, little effort has been put into increasing sample sizes and/or in their statistical validity. Whether taxonomists working on these groups have ever reflected up on the distinction between descriptive and inferential nature of the data they present and how that would affect their practice is an open question. The available literature suggests that, as a community, we seem to loosely jump from one context to the other as we please without statistical rigor. In the sections below, we will illustrate the major problems we recognize on the use of statistics in taxonomy of cestodes and propose some guidelines which we consider more appropriate for the data we compile.

## The tradition and implications

It would be fair to start with an example in which one of us is involved so that we are not criticized for hiding our own mistakes while pointing the others. We should recognize that all of us are bound follow tradition without critical evaluation at some point. Few years ago, Marques et al. (2012) described a new taxon called Ahamulina catarina – a new genus and species of diphyllidean found in deep water catsharks off the coast of Brazil. Here is what they stated in part of the description of this new taxon based on on 9 complete and 6 incomplete whole-mounted specimens, cross-sections of 2 proglottids (Marques et al., 2012:55):

_<div align="center">"Mature proglottids 10–17 (12±3; 6) in number, 728–1,892 (1,153±228; 47) long by 291–586 (460±70; 47) wide, .."</div>_

- Menoret & Ivanov (2011:179) described a rhinebothriidean Rhinebothrium corbatai based on 9 complete mature specimens and 1 strobila without scolex and reported:

_<div align="center">"Testes oval, 3--5 (4±1, n=9, n=28) per proglottid, 20--57 (39±10, n=9, n=55) long, 10-47 (28±8, n=9, n=55) wide, ...";</div>_

- Scholz & de Chambrier (2012:652) described the proteocephalidean Pangasiocestus romani based on 5 specimens and submitted:

_<div align="center">"Cirrus sac widely pyriform, 140–200 long and 90–170 wide, its length representing only 14–21% of proglottis width (x = 17%, n = 26) ... Ovary width represents 72–79% (x = 76%, n = 25, CV = 3%) of proglottis width ...";</div>_

Schaeffner & Beveridge (2013:258) described the trypanorhinch Prochristianella mattisi based on 11 whole-mounts and two specimens in glycerol and reported:

_<div align="center">"..., prebulbar organs present, small; bulbs elongate (Fig. 3), bent, thick-walled, 600-760 (649 ± 53; n = 22) long by 100-130 (117 ± 10; n = 22) wide, ...";</div>_

- Dimitrova et al. (2013:217) described the dilepidinean Pseudangularia gonzalezi based on four complete specimens in addition to fragments of two additional specimens (6 slides) and described:

_<div align="center">"Distal part of atrium wide, 35–99 (52, n = 21) deep, with diameter 7–45 (24, n = 21) at orifice ...".</div>_


There are two components we are concerned and will discuss in detail below. One is related to the concept of pseudoreplication (sensu Hurlbert, 1984) – which seems to permeate this literature. The other concerns the implicit assumptiom of that the data have a normal or at least bell-shaped distribution. We will start with the problem of pseudoreplication, then we will revisit some of the properties of the parameters that describe statistical distributions, and finally, we will try to convince you that there are more informative metrics that we could adopt when describing our morphometric data.

### Pseudoreplication

One of the fundamental assumptions of most statistical techniques is that observations are independent of one another (Hurlbert 1984). Pseudoreplication typically occurs when the number of observations are treated inappropriately as independent replicates. Observations may not be independent if ( i ) repeated measurements are taken on the same subject, ( ii ) the data have a hierarchical structure, ( iii ) observations are correlated in time, or ( v ) observations are correlated in space (Millar and Anderson,2004; but see Schank and Koehnle, 2009). Pseudoreplication is not uncommon in other areas of research (Hurlbert 1984, Millar and Anderson,2004; Lazic, 2010; among others) and a lot of debate has been published in the literature since Hurlbert (1984) called the attention of ecologists to the problem. Since then, researchers either acknowledged the problem and tried to avoid it by redefining experimental or sampling design and/or relying on more complex statistical models or, sadly, simply noting its existence and then keep doing what was done before (see Schank and Koehnle, 2009; Zuur et al., 2010). We hope you do not choose the latter.

We should go back to the taxonomic examples above and compare the number of individuals (whole worms) available for each description and the sample size reported for each variable. It should be obvious that for some variables (i.e., structures or part of thereof), the descriptive statistics is based on a larger number of observations than the amount of individual worms available to the investigator. For instance, Marques et al. (2012) reported that the mature proglottid of Ahamulina catarina was 728–1,892 (1,153±228; 47) long by 291–586 (460±70; 47) wide, all based on 47 observations. How could that be if they had only ”9 complete and 6 incomplete whole-mounted specimens“? A hint: they took more than a single measurement from a single specimen. This is pseudoreplication.

It is true that most statistical techniques assume that observations are independent – but but we do not use at all those that account for dependency. One could suggest that maybe the examples above are not such a terrible sin after all. However, all statistical metrics we are using assume independence and, for inferencial purposes would also require special attention to sample sizes and random sampling. Thus, repeated measurements taken on the same subject violate one of the major assumption and statistic. We will provide you an example to illustrate how pervarsive can be the introduction pseudoreplication to the description of your data – just in case the violation did not convince you already that you should avoid it. Consider the data presented in Table 1.

<div align="center">Table 1. Theoretical example showing the effects of pseudoreplication on 15 random samples from a log-normal distribution.</div>


