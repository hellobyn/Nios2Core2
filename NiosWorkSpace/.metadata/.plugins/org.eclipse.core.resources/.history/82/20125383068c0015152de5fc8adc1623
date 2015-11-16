#ifndef SOPC_H_
#define SOPC_H_

#include "system.h"

#define _LED
#define _TIMER0

typedef struct
{
    unsigned long int DATA;
    unsigned long int DIRECTION;
    unsigned long int INTERRUPT_MASK;
    unsigned long int EDGE_CAPTURE;
}PIOSTR;

#ifdef _LED
#define LED ((PIOSTR*)PIO0_BASE)
#endif

typedef struct
{
    union
    {
        struct
        {
            volatile unsigned long int TO   :1;     //计数到0 被置1
            volatile unsigned long int RUN  :1;     //1：正在计数
            volatile unsigned long int NC   :30;
        }BITS;
        volatile unsigned long int WORD;
    }STATUS;    //状态寄存器

    union
    {
        struct
        {
            volatile unsigned long int ITO      :1; //使能中断
            volatile unsigned long int CONT     :1; //连续计数
            volatile unsigned long int START    :1; //开始计数
            volatile unsigned long int STOP     :1; //停止计数
            volatile unsigned long int NC       :28;
        }BITS;
        volatile unsigned long int WORD;
    }CONTROL;   //控制寄存器

    volatile unsigned long int PERIODL;             //计数频率 低位
    volatile unsigned long int PERIODH;             //计数频率 高位
    volatile unsigned long int SNAPL;               //
    volatile unsigned long int SNAPH;               //
}TIMERSTR;

#ifdef _TIMER0
#define TIMER0 ((TIMERSTR*)TIMER0_BASE)
#endif

#endif

