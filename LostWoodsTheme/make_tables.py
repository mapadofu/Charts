


def dump_table( ouf, table, f0, midi0 ):
    for i in xrange( 128 ):
        (octave,index)=divmod( i-midi0, len(table) )
        f=int( 2**octave*table[index]*f0*1000+0.5)
        ouf.write(  str(f) )
        ouf.write("\n")

def normalize_table(table, center_index):
    f0=table[center_index]
    return [x/f0 for x in table]



if __name__=="__main__":
    ''' Make a bunch of tuning tables as used by timidity  -- can be used to 
        check the impact of different tunings on this tune.
    '''
    #      c    c#       d      ef     e      f       fs      g      gs     a      as      b
    gaish=[1.0, 16.0/15, 9.0/8, 6.0/5, 5.0/4, 4.0/3, 45.0/32, 3.0/2, 8.0/5, 5.0/3, 16.0/9, 15.0/8 ]
    pyth=[1.0, 16.0/15, 9.0/8, 6.0/5, 5.0/4, 4.0/3, 45.0/32, 3.0/2, 8.0/5, 27.0/16, 16.0/9, 15.0/8 ]
    bad=[1.0, 16.0/15, 9.0/8, 6.0/5, 5.0/4, 4.0/3, 45.0/32, 3.0/2, 8.0/5, 28.0/16, 16.0/9, 15.0/8 ]

    et=[ 2**(i/12.0) for i in xrange(12)]

    ouf=open('pythagorean6.txt', 'w')
    ouf.write("# Just intonated C, but with pythagorean 6th; C1=8.17579891Hz\n")
    dump_table( ouf, pyth, 8.1757989156, 0)
    ouf.close()

    ouf=open('gablooded6.txt','w')
    ouf.write("# Just intonated C, but with ga-blooded 6th; C1=8.17579891Hz\n")
    dump_table( ouf, gaish, 8.1757989156, 0)
    ouf.close()
    
    ouf=open('et.txt','w')
    ouf.write("# equal temperament; C1=8.17579891Hz\n")
    dump_table( ouf, et, 8.1757989156, 0)
    ouf.close()    
    
    ouf=open('bad.txt','w')
    ouf.write("# just intonated C, but with 6th intentionally 'off'; C1=8.17579891Hz\n")
    dump_table( ouf, bad, 8.1757989156, 0)
    ouf.close()
