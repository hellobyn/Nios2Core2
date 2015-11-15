#include <unistd.h>
#include "../inc/sopc.h"
#include "sys/alt_irq.h"
#include "altera_avalon_timer_regs.h"
#include "alt_types.h"
#include <priv/alt_legacy_irq.h>

//函数声明
static void timerInit(void);
static void timer0ISR(void *context,unsigned long id);

//变量声明
unsigned int timer0ISRContext;
int i = 0, j = 0, flag;
alt_u32 timerPrd[4] = {5000000, 10000000, 25000000, 50000000};

int main(void)
{
    timerInit();
    LED->DATA = 1;
    while(1);
    return 0;
}

void timerInit(void)
{
    TIMER0->STATUS.WORD = 0;
    TIMER0->PERIODL = 50000000;
    TIMER0->PERIODH = 50000000 >> 16;
    TIMER0->CONTROL.WORD = 7;
    alt_irq_register(TIMER0_IRQ, (void *)TIMER0_BASE, timer0ISR);
}

static void timer0ISR(void *context,unsigned long id)
{
    TIMER0->STATUS.WORD = 0;
    LED->DATA = ~LED->DATA;
}

