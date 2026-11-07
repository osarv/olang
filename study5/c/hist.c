#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdint.h>
#include <time.h>
static uint64_t s[4];
static uint64_t rotl(uint64_t x,int k){return (x<<k)|(x>>(64-k));}
static uint64_t next(void){uint64_t r=rotl(s[1]*5,7)*9,t=s[1]<<17;s[2]^=s[0];s[3]^=s[1];s[1]^=s[2];s[0]^=s[3];s[2]^=t;s[3]=rotl(s[3],45);return r;}
static double fl(void){return (next()>>11)*0x1.0p-53;}
static double normal(void){double u=fl(),v=fl(); if(u<1e-300)u=1e-300; return sqrt(-2*log(u))*cos(2*M_PI*v);}
static int cmp(const void*a,const void*b){double x=*(double*)a,y=*(double*)b;return x<y?-1:x>y;}
static double now(){struct timespec t;clock_gettime(CLOCK_MONOTONIC,&t);return t.tv_sec+t.tv_nsec*1e-9;}
int main(){
  s[0]=1;s[1]=2;s[2]=3;s[3]=4; long n=1000000;
  double t0=now();
  FILE*f=fopen("/tmp/study5_numbers_c.txt","w");
  for(long i=0;i<n;i++) fprintf(f,"%.17g\n",exp(normal()*0.5+2.0));
  fclose(f);
  double t1=now();
  f=fopen("/tmp/study5_numbers_c.txt","r"); char*line=NULL; size_t cap=0; double*v=malloc(n*sizeof(double)); long k=0;
  while(getline(&line,&cap,f)>0) v[k++]=strtod(line,NULL);
  fclose(f);
  double t2=now();
  qsort(v,k,sizeof(double),cmp);
  double t3=now();
  printf("n=%ld median=%.3f write %.3f read %.3f sort %.3f\n",k,v[k/2],t1-t0,t2-t1,t3-t2);
}
