#ifndef SOPC_H_
#define SOPC_H_

#include "system.h"

#define _LED
#define _TIMER
#define _FIFO
//#define _COMPARATOR

typedef struct
{
    unsigned long int data;
    unsigned long int direction;
    unsigned long int interruptMask;
    unsigned long int edgeCapture;
}PIOSTR;

typedef struct
{
    union
    {
        struct
        {
            volatile unsigned long int dataEn   :1;    
            volatile unsigned long int rst      :1;    
            volatile unsigned long int order    :1;
            volatile unsigned long int nc       :29;
        }bit;
        volatile unsigned long int word;
    }data;
    unsigned long int direction;
    unsigned long int interruptMask;
    unsigned long int edgeCapture;
}COMPSTR;

typedef struct
{
    union
    {
        struct
        {
            volatile unsigned long int to   :1;     //计数到0 被置1
            volatile unsigned long int run  :1;     //1：正在计数
            volatile unsigned long int nc   :30;
        }bits;
        volatile unsigned long int word;
    }status;    //状态寄存器

    union
    {
        struct
        {
            volatile unsigned long int ito      :1; //使能中断
            volatile unsigned long int cont     :1; //连续计数
            volatile unsigned long int start    :1; //开始计数
            volatile unsigned long int stop     :1; //停止计数
            volatile unsigned long int nc       :28;
        }bits;
        volatile unsigned long int word;
    }control;   //控制寄存器

    volatile unsigned long int periodL;             //计数频率 低位
    volatile unsigned long int periodH;             //计数频率 高位
    volatile unsigned long int snapL;               //
    volatile unsigned long int snapH;               //
}TIMERSTR;

typedef struct
{
    volatile unsigned long int fillLevel;
    union
    {
        struct
        {
            volatile unsigned long int full         :1;     
            volatile unsigned long int empty        :1;     
            volatile unsigned long int almostFull   :1;
            volatile unsigned long int almostEmpty  :1;
            volatile unsigned long int overFlow     :1;
            volatile unsigned long int underFlow    :1;
            volatile unsigned long int nc           :26;
        }bits;
        volatile unsigned long int word;
    }status;    //状态寄存器

    volatile unsigned long int event;             
    volatile unsigned long int irqEn;             
    volatile unsigned long int almostFull;               
    volatile unsigned long int almostEmpty;               
}FIFOSTR;

#define ALMOSRFULL  (FIFO1_IN_CSR_FIFO_DEPTH - 4) 
#define ALMOSTEMPTY 4

#ifdef _LED
#define led ((PIOSTR*)PIO1_BASE)
#endif

#ifdef _TIMER
#define timer ((TIMERSTR*)TIMER1_BASE)
#endif

#ifdef _FIFO
#define fifo ((FIFOSTR*)FIFO1_IN_CSR_BASE)
#endif

#ifdef _COMPARATOR
#define compCtrl ((COMPSTR*)COMPCTRL1_BASE)
#define compDataH ((PIOSTR*)COMPDATA1H_BASE)
#define compDataL ((PIOSTR*)COMPDATA1L_BASE)
#endif

#endif

