#!/usr/bin/python

import numpy

from random import Random
from sys import argv

if __name__=='__main__':
  if len(argv)>1:
    p=float(argv[1])+1
  else:
    p=3.
  if len(argv)>2:
    err=float(argv[2])
  else:
    err=0.05

  nsamples=500000
  nbins=100
  data=[]

  rng=Random()
  suffix="_{0:02d}_{1:03d}.dat".format(int(p-1), int(err*1000))

### Do the linear noise (apply directly to r)
  n=0
  while n<nsamples:
    x=rng.random()
    r=1-x**(1/p)+rng.gauss(0,err)
    if r>=0 and r<1:
      data.append(r)
      n+=1
  
  pdf,bins=numpy.histogram(data,nbins,range=(0,1),density=True)
  
  fout=open("linear"+suffix, 'w')
  for xmin,xmax,y in zip(bins[:-1],bins[1:],pdf):
    fout.write("{0:.5f} {1:.5f}\n".format(0.5*(xmin+xmax), y))
  fout.close()

### Do the sinusoidal noise (apply to coupling length)
  data=[]
  for i in range(nsamples):
    x=rng.random()
    r=1-x**(1/p)
    phi=numpy.arcsin(r)+rng.gauss(0,err)
    r=abs(numpy.sin(phi))
    data.append(r)
  
  pdf,bins=numpy.histogram(data,nbins,range=(0,1),density=True)
  
  fout=open("sin"+suffix, 'w')
  for xmin,xmax,y in zip(bins[:-1],bins[1:],pdf):
    fout.write("{0:.5f} {1:.5f}\n".format(0.5*(xmin+xmax), y))
  fout.close()
