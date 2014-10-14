# AUTHOR: Alexander Bake
# 
# TASK: Using a function that produces an unfair coin, define a function that
#       produces a fair coin. prove that your solution actually produces a fair 
#       coin.

# This function is just a black box.
def unfair_flip():
    return

# My solution:
def fair_flip():
    f1 = unfair_flip()
    f2 = unfair_flip()

    if f1 == f2:
        return fair_flip()
    else:
        return f1

# Proof:
# We only return a value when the first and second flips are not equal to each
# other. W.L.O.G., let's calculate the probability that f1 is heads, given that
# the first and second flips are not equal. If this probability is 1/2, then we
# know that our coin is fair.
#
# i.e. We want to show that: P(H | HT U TH) = 1/2
#
# Things we know:
# P(H) = p
# P(T) = 1-p
# P(HT) = P(TH) = p(1-p)
#
# Using Bayes' Theorem we know:
#   P(H | HT U TH) = P(HT U TH | H)*P(H) / P(HT U TH)
#                  = p*(1-p) / 2*p*(1-p)
#                  = 1/2