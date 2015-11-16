#ifndef SOPC_H_
#define SOPC_H_

#include "system.h"

#define _LED
#define _TIMER

typedef struct
{
    unsigned long int DATA;
    unsigned long int DIRECTION;
    unsigned long int INTERRUPT_MASK;
    unsigned long int EDGE_CAPTURE;
}PIOSTR;

#ifdef _LED
#define LED ((PIOSTR*)PIO1_BASE)
#endif

typedef struct
{
    union
    {
        struct
        {
            volatile unsigned long int TO   :1;     //������0 ����1
            volatile unsigned long int RUN  :1;     //1�����ڼ���
            volatile unsigned long int NC   :30;
        }BITS;
        volatile unsigned long int WORD;
    }STATUS;    //״̬�Ĵ���

    union
    {
        struct
        {
            volatile unsigned long int ITO      :1; //ʹ���ж�
            volatile unsigned long int CONT     :1; //��������
            volatile unsigned long int START    :1; //��ʼ����
            volatile unsigned long int STOP     :1; //ֹͣ����
            volatile unsigned long int NC       :28;
        }BITS;
        volatile unsigned long int WORD;
    }CONTROL;   //���ƼĴ���

    volatile unsigned long int PERIODL;             //����Ƶ�� ��λ
    volatile unsigned long int PERIODH;             //����Ƶ�� ��λ
    volatile unsigned long int SNAPL;               //
    volatile unsigned long int SNAPH;               //
}TIMERSTR;

#ifdef _TIMER
#define TIMER ((TIMERSTR*)TIMER1_BASE)
#endif

#endif