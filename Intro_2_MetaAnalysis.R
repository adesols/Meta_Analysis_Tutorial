#This is a tutorial from [Deeply Trivial](https://www.deeplytrivial.com/2018/04/w-is-for-meta-analysis-weights.html) by Sara
#This is the first of a 3-part tuorial to introduce how to conduct meta-analysis using R.
#Before we go into conducting meta-analysis, we want to first talk about what meta-analysis means. 
#Meta-analysis is define as a statistical technique used to combine the results of multiple studies to arrive at a comprehensive conclusion. This method increases the power to detect effects by aggregating data, helping to resolve uncertainty when reports disagree and identify patterns among the study results.
#In order words it allows to combine results from multiple study of the same topic using different statistical techniques.
#Aggregating across studies increases your sample size, maximizing power and providing a better estimate of the true effect (or set of effects). It's an incredibly time-intensive process, but it is incredibly rewarding and the results are very valuable for helping to understand (and come to a consensus on) an area of research and guide future research on the topic.
#Note:
## - Make sure your coding of the parameters involved in the studies are clear
## - Decide which of these characteristics are important to examine, then create a coding scheme to pull the information from the articles
## - You would also have another person code the same information to see if they ill get the same result. You can use "Cohen's kappa" for your research
## - You would use the results of the study (means & standard deviation, statistical analyses, etc.) to generate an effect size(s) for the study. This would allow you to standardize the result by generating a standard metrics. This allows you to generate common metric that allows you to compare across studies.
## - Average these effect sizes using a weighted average (i.e more sample size will have more impact than fewer sample size)

#This is done using the `metafor` package
install.packages("metafor", dependencies = TRUE)
#load the package into your library
library(metafor)
