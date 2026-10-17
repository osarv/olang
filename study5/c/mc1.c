#include <stdio.h>
#include <stdint.h>
#include <math.h>
#include <pthread.h>
#include <time.h>
typedef struct { uint64_t s[4]; } R;
static uint64_t mix(uint64_t z){z=(z^(z>>30))*0xbf58476d1ce4e5b9ULL;z=(z^(z>>27))*0x94d049bb133111ebULL;return z^(z>>31);}
static void seed(R*r,uint64_t s){uint64_t g=0x9e3779b97f4a7c15ULL; for(int i=0;i<4;i++) r->s[i]=mix(s+(i+1)*g);}
static inline uint64_t rotl(uint64_t x,int k){return (x<<k)|(x>>(64-k));}
static inline uint64_t nx(R*r){uint64_t*s=r->s;uint64_t o=rotl(s[1]*5,7)*9,t=s[1]<<17;s[2]^=s[0];s[3]^=s[1];s[1]^=s[2];s[0]^=s[3];s[2]^=t;s[3]=rotl(s[3],45);return o;}
static inline double fl(R*r){return (nx(r)>>11)*(1.0/9007199254740992.0);}
static inline double nrm(R*r){double u=1.0-fl(r),v=fl(r);return sqrt(-2*log(u))*cos(2*M_PI*v);}
typedef struct{uint64_t seed;long n;long hits;double sum;} Job;
static void*pi(void*a){Job*j=a;R r;seed(&r,j->seed);long in=0;for(long i=0;i<j->n;i++){double x=fl(&r),y=fl(&r);if(x*x+y*y<=1.0)in++;}j->hits=in;return 0;}
static void*call(void*a){Job*j=a;R r;seed(&r,j->seed);double s=0;for(long i=0;i<j->n;i++){double st=100.0*exp((0.05-0.5*0.04)+0.2*nrm(&r));s+=fmax(st-105.0,0);}j->sum=s;return 0;}
static double now(){struct timespec t;clock_gettime(CLOCK_MONOTONIC,&t);return t.tv_sec+t.tv_nsec*1e-9;}
int main(){long S=8000000;int T=1;pthread_t th[4];Job j[4];
 double t=now(); for(int i=0;i<T;i++){j[i].seed=i+1;j[i].n=S/T;pthread_create(&th[i],0,pi,&j[i]);} long tot=0; for(int i=0;i<T;i++){pthread_join(th[i],0);tot+=j[i].hits;}
 printf("pi %.5f in %.3f s\n",4.0*tot/(double)S,now()-t);
 t=now(); for(int i=0;i<T;i++){j[i].seed=100+i;j[i].n=S/4/T;pthread_create(&th[i],0,call,&j[i]);} double sum=0; for(int i=0;i<T;i++){pthread_join(th[i],0);sum+=j[i].sum;}
 printf("call %.4f in %.3f s\n",sum/(S/4)*exp(-0.05),now()-t);}
