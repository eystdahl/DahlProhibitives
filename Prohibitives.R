
WALSprohibitives <- matrix(c(113, 182, 55, 146), ncol = 2, byrow = TRUE)

colnames(WALSprohibitives) <- c("Same Negation", "Different Negation")
rownames(WALSprohibitives) <- c("Same form", "Different form")


WALSprohibitives

chisq.test(WALSprohibitives)

library(vcd)

assocstats(WALSprohibitives)

chisq.test(WALSprohibitives)$expected


# fisher exact test of each type:

SameFormSameNegation <- matrix(c(113, 182, 55, 146), ncol = 2, byrow = TRUE)

fisher.test(SameFormSameNegation,alternative = 'greater')

SameFormDifferentNegation <- matrix(c(182, 113, 146, 55), ncol = 2, byrow = TRUE)

fisher.test(SameFormDifferentNegation, alternative = 'less')

DifferentFormSameNegation <- matrix(c(55, 146, 113, 182), ncol = 2, byrow = TRUE)
fisher.test(DifferentFormSameNegation, alternative = 'less')

DifferentFormDifferentNegation <- matrix(c(146, 55, 182, 113), ncol = 2, byrow = TRUE)
fisher.test(DifferentFormDifferentNegation, alternative = 'greater')

WALSimperatives <- matrix(c(292, 43, 2, 89, 122, 0), ncol = 3, byrow = TRUE)

chisq.test(WALSimperatives)

chisq.test(WALSimperatives)$expected


GreekProhibitives <- matrix(c(74, 4, 14, 14, 42, 1, 2, 6), ncol = 4, byrow = TRUE)

colnames(GreekProhibitives) <- c("Present imperative", "Aorist imperative", "Aorist subjunctive", "Infinitive")
rownames(GreekProhibitives) <- c("Iliad", "odyssey")
GreekProhibitives

chisq.test(GreekProhibitives)

chisq.test(GreekProhibitives)$expected

LatinProhibitives <- matrix(c(45,56,12), ncol = 3, byrow = TRUE)

chisq.test(LatinProhibitives)

GothicProhibitives <- matrix(c(48,20), ncol = 2, byrow = TRUE)

chisq.test(GothicProhibitives)

IndoEuropeanProhibitives <- matrix(c(3, 4, 2, 5), ncol = 2, byrow = TRUE)

colnames(IndoEuropeanProhibitives) <- c("Same Negation", "Different Negation")
rownames(IndoEuropeanProhibitives) <- c("Same form", "Different form")

IndoEuropeanProhibitives

IndoEuropeanProhibitivesProportion <- prop.table(IndoEuropeanProhibitives)*100

colnames(IndoEuropeanProhibitivesProportion) <- c("Same Negation", "Different Negation")
rownames(IndoEuropeanProhibitivesProportion) <- c("Same form", "Different form")

IndoEuropeanProhibitivesProportion

barplot(IndoEuropeanProhibitivesProportion, sub = "Figure 1: Proportion of prohibitive strategies in Indo-European", ylim = c(0,40), beside = TRUE)

legend("topleft", fill = c("black", "grey60"), legend=c("Same form", "Different form"))

WALSprohibitivesProportion <- prop.table(WALSprohibitives)*100

colnames(WALSprohibitivesProportion) <- colnames(WALSprohibitives)
rownames(WALSprohibitivesProportion) <- colnames(WALSprohibitives)
WALSprohibitivesProportion

barplot(WALSprohibitivesProportion, sub = "Figure 2: Proportion of prohibitive strategies across languages", ylim = c(0,40), beside = TRUE)
legend("topleft", fill = c("black", "grey60"), legend=c("Same form", "Different form"))