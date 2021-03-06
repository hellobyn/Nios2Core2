#include <unistd.h>
#include "../inc/sopc.h"
#include "sys/alt_irq.h"
#include "altera_avalon_timer_regs.h"
#include "alt_types.h"
#include <priv/alt_legacy_irq.h>

//函数声明
static void timerInit(void);
static void timerISR(void *context,unsigned long id);

//变量声明
//unsigned int timer0ISRContext;
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
    TIMER->STATUS.WORD = 0;
    TIMER->PERIODL = 50000000;
    TIMER->PERIODH = 50000000 >> 16;
    TIMER->CONTROL.WORD = 7;
    alt_irq_register(TIMER0_IRQ, (void *)TIMER0_BASE, timerISR);
}

static void timerISR(void *context,unsigned long id)
{
    TIMER->STATUS.WORD = 0;
    LED->DATA = ~LED->DATA;
}

