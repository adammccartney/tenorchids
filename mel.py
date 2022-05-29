#!/usr/bin/python3

# throwaway script for calculating the melody
# usage: copy the stdout to score

import random
import heapq
from operator import itemgetter

# durations in quarters
durations = [1, 2, 3, 5, 8, 5, 3, 2, 1, 1]
total = sum(durations) # 31

# create three sequences of three integers such that the sums of each sequence
# [(a,31,b),(c,31,d),(e,31,f)]
# the total length of each sequence should be less than or equal to 66
# each value should have the following qualities
# a < 31
# b <= 66
# c < 97
# d <= 132
# e < 163
# f <= 200


def createTraversal(total: int, seqlen: int, lim: int):
    """    
    create a sequence of numbers such that the sum of the elements is equal to
    the total. This is really a graph traversal:
        The specific use case being targeted is a sequence of six integers,
        each of which represents a number of repitition.
        Each reptition is at least 2.
    """
    # initialize sequence to null
    # then create a simple base number of repititions per harmony
    seq = [0] * seqlen
    val = random.randint(0, lim)
    seq = [i + val for i in seq]
    result = sum(seq) 
    while (result < total):
        ridx = random.randrange(seqlen)
        val = random.randint(0, 15)
        seq[ridx] = seq[ridx] + val
        result = sum(seq)
    # do some dirty tampering to round it down if we've overshot
    if (result > total):
        # track the index of the largest value incase we need to decrement
        i_val = heapq.nlargest(1, enumerate(seq), key=itemgetter(1))
        idx = i_val[0][0]
        while (result > total):
            seq[idx] = seq[idx] - 1
            result = sum(seq)
    return seq

if __name__ == '__main__':
    """
    create a traversal for our melody (a sequence of 6 rests with which we
    will frame our melody)
    """
    TOT_NUM_RESTS = 107
    NUM_RESTS = 4
    myseq = createTraversal(TOT_NUM_RESTS, NUM_RESTS, 8)
    print(myseq)
    # [33, 38, 9, 27]
