#Create matrix of prohibitive clauses in Homeric Greek

GreekProhibitives <- matrix(c(73, 4, 14, 14, 42, 1, 2, 6), ncol = 4, byrow = TRUE)

colnames(GreekProhibitives) <- c("Present imperative", "Aorist imperative", "Aorist subjunctive", "Infinitive")
rownames(GreekProhibitives) <- c("Iliad", "Odyssey")

#Check

GreekProhibitives

#Perform chi-square test

chisq.test(GreekProhibitives)

#Get CramC)r's V value

library(vcd)

assocstats(GreekProhibitives)

#Make matrix of prohibitive clauses in Early Latin

LatinProhibitives <- matrix(c(45,56,12), ncol = 3, byrow = TRUE)

#Chi-square test

chisq.test(LatinProhibitives)

#Make matrix of Gothic data

GothicProhibitives <- matrix(c(10, 6, 10, 43), ncol = 2, byrow = TRUE)
colnames(GothicProhibitives) <- c("Imperative", "Optative")
rownames(GothicProhibitives) <- c("Uncontrollable Events", "Controllable Events")
GothicProhibitives

chisq.test(GothicProhibitives)

assocstats(GothicProhibitives)

#Create matrix of prohibitive clauses

WALSprohibitives <- matrix(c(113, 182, 55, 146), ncol = 2, byrow = TRUE)

#Add column and row names

colnames(WALSprohibitives) <- c("Same Negation", "Different Negation")
rownames(WALSprohibitives) <- c("Same form", "Different form")

#Check

WALSprohibitives

#Perform chi-squared test

chisq.test(WALSprohibitives)

#Load vcd package

library(vcd)

#Get CramC)r's V value

assocstats(WALSprohibitives)

#Get expected values

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
