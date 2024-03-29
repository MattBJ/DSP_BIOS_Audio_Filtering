/*   Do *not* directly modify this file.  It was    */
/*   generated by the Configuration Tool; any  */
/*   changes risk being overwritten.                */

/* INPUT MattB_HW8_v2.cdb */

/* MODULE PARAMETERS */
-u _GBL_setPLLto225MHz
GBL_USERINITFXN = _GBL_setPLLto225MHz;

-u MEM_NULL
MEM_SEGZERO = MEM_NULL;
-u MEM_NULL
MEM_MALLOCSEG = MEM_NULL;

-u CLK_F_getshtime
CLK_TIMEFXN = CLK_F_getshtime;
-u HWI_F_dispatch
CLK_HOOKFXN = HWI_F_dispatch;

-u _KNL_tick
PRD_THOOKFXN = _KNL_tick;

-u IRAM
RTDX_DATAMEMSEG = IRAM;

-u IRAM
HST_DSMBUFSEG = IRAM;

-u GBL_NULL
SWI_EHOOKFXN = GBL_NULL;
-u GBL_NULL
SWI_IHOOKFXN = GBL_NULL;
-u SWI_F_exec
SWI_EXECFXN = SWI_F_exec;
-u SWI_F_run
SWI_RUNFXN = SWI_F_run;

-u MEM_NULL
TSK_STACKSEG = MEM_NULL;
-u _FXN_F_nop
TSK_VCREATEFXN = _FXN_F_nop;
-u _FXN_F_nop
TSK_VDELETEFXN = _FXN_F_nop;
-u _FXN_F_nop
TSK_VEXITFXN = _FXN_F_nop;

-u GBL_NULL
IDL_CALIBRFXN = GBL_NULL;

-u _UTL_doAbort
SYS_ABORTFXN = _UTL_doAbort;
-u _UTL_doError
SYS_ERRORFXN = _UTL_doError;
-u _UTL_halt
SYS_EXITFXN = _UTL_halt;
-u _UTL_doPutc
SYS_PUTCFXN = _UTL_doPutc;

-u _FXN_F_nop
GIO_CREATEFXN = _FXN_F_nop;
-u _FXN_F_nop
GIO_DELETEFXN = _FXN_F_nop;
-u _FXN_F_nop
GIO_PENDFXN = _FXN_F_nop;
-u _FXN_F_nop
GIO_POSTFXN = _FXN_F_nop;

/* OBJECT ALIASES */
_SDRAM = SDRAM;
_IRAM = IRAM;
_PRD_clock = PRD_clock;
_PRD0 = PRD0;
_HWI_RESET = HWI_RESET;
_HWI_NMI = HWI_NMI;
_HWI_RESERVED0 = HWI_RESERVED0;
_HWI_RESERVED1 = HWI_RESERVED1;
_HWI_INT4 = HWI_INT4;
_HWI_INT5 = HWI_INT5;
_HWI_INT6 = HWI_INT6;
_HWI_INT7 = HWI_INT7;
_HWI_INT8 = HWI_INT8;
_HWI_INT9 = HWI_INT9;
_HWI_INT10 = HWI_INT10;
_HWI_INT11 = HWI_INT11;
_HWI_INT12 = HWI_INT12;
_HWI_INT13 = HWI_INT13;
_HWI_INT14 = HWI_INT14;
_HWI_INT15 = HWI_INT15;
_KNL_swi = KNL_swi;
_PRD_swi = PRD_swi;
_SWI_ping = SWI_ping;
_SWI_pong = SWI_pong;
_SWI_pang = SWI_pang;
_TSK_idle = TSK_idle;
_LOG_system = LOG_system;

/* MODULE GBL */

SECTIONS {
   .vers (COPY): {} /* version information */
}

-priority
--trampolines
--"diag_suppress=16002"
-llnknone.a67
-ldrivers.a67          /* device drivers support */
-lsioboth.a67          /* supports both SIO models */
-lbiosC6000.a67        /* BIOS clock specific library */
-lbios6x1x.a67         /* BIOS c6x1x specific library */
-lbios.a67             /* DSP/BIOS support */
-lrts6700.lib          /* C and C++ run-time library support */

_GBL_CACHE = GBL_CACHE;

/* MODULE MEM */
-stack 0x400
MEMORY {
   SDRAM       : origin = 0x80000000,  len = 0x800000
   IRAM        : origin = 0x0,         len = 0x40000
}
/* MODULE CLK */
SECTIONS {
   .clk: {
        
        CLK_F_gethtime = CLK_F_getshtime;
        *(.clk) 
   } > IRAM, RUN_START(CLK_A_TABBEG) 
}
_CLK_PRD = CLK_PRD;
_CLK_COUNTSPMS = CLK_COUNTSPMS;
_CLK_REGS = CLK_REGS;
_CLK_USETIMER = CLK_USETIMER;
_CLK_TIMERNUM = CLK_TIMERNUM;
_CLK_TDDR = CLK_TDDR;

/* MODULE PRD */
SECTIONS {
   .prd: RUN_START(PRD_A_TABBEG), RUN_END(PRD_A_TABEND) {
   } > IRAM
}
PRD_A_TABLEN = 1;

/* MODULE HWI */
SECTIONS {
    .hwi_vec: 0x0 {
        HWI_A_VECS = .;
        *(.hwi_vec)
    }
}

_HWI_CFGDISPATCHED = HWI_CFGDISPATCHED;

/* MODULE SWI */
SECTIONS {
   .swi: RUN_START(SWI_A_TABBEG), RUN_END(SWI_A_TABEND) {
   } > IRAM
}
SWI_A_TABLEN = 5;

/* MODULE TSK */
SECTIONS {
   .tsk: {
        *(.tsk) 
   } > IRAM
}

/* MODULE IDL */
SECTIONS {
   .idl: {
        *(.idl) 
   } > IRAM, RUN_START(IDL_A_TABBEG)
   
   .idlcal: {
        *(.idlcal) 
   } > IRAM, RUN_START(IDL_A_CALBEG) 
}


LOG_A_TABLEN = 1; _LOG_A_TABLEN = 1;

PIP_A_TABLEN = 0;


SECTIONS {
        .bss:     {} > IRAM

        .far:     {} > IRAM

        .sysdata: {} > IRAM

        .dsm: {} > IRAM

        frt:    {} > IRAM

        .mem: 	  {} > IRAM

        .bios:    {} > IRAM

        .cio:     {} > IRAM

        .data:    {} > IRAM

        .gio:     {} > IRAM

        .pinit:   {} > IRAM

        .sys:     {} > IRAM

        .sysregs: {} > IRAM

        .text:    {} > IRAM

        .cinit:    {} > IRAM

        .switch:    {} > IRAM

        .gblinit:    {} > IRAM

        .sysinit:    {} > IRAM

        .trcdata:    {} > IRAM

        .hwi: {}  > IRAM

        .TSK_idle$stk: {
            *(.TSK_idle$stk)
        } > IRAM

        /* LOG_system buffer */
        .LOG_system$buf: align = 0x100 {} > IRAM

        GROUP {
         .const: align = 0x8 {} 
         .printf (COPY): {} 
        } > IRAM

        .args: align=4 fill=0 {
            *(.args)
            . += 0x4;
        } > IRAM

        .trace: fill = 0x0  align = 0x4 {
           _SYS_PUTCBEG = .;
           . += 0x200;
           _SYS_PUTCEND = . - 1;
        } > IRAM

        .hst: RUN_START(HST_A_TABBEG), RUN_START(_HST_A_TABBEG), RUN_END(HST_A_TABEND), RUN_END(_HST_A_TABEND) {
        } > IRAM

        .log: RUN_START(LOG_A_TABBEG), RUN_START(_LOG_A_TABBEG), RUN_END(LOG_A_TABEND), RUN_END(_LOG_A_TABEND) {
        } > IRAM

        .pip: RUN_START(PIP_A_TABBEG), RUN_START(_PIP_A_TABBEG), RUN_END(PIP_A_TABEND), RUN_END(_PIP_A_TABEND) {
        } > IRAM

        .sts: RUN_START(STS_A_TABBEG), RUN_START(_STS_A_TABBEG), RUN_END(STS_A_TABEND), RUN_END(_STS_A_TABEND) {
        } > IRAM

        .stack: align = 0x8 {
            GBL_stackbeg = .;
            *(.stack)
            GBL_stackend = GBL_stackbeg + 0x400 - 1;
            _HWI_STKBOTTOM = GBL_stackbeg + 0x400 - 8;
            _HWI_STKTOP = GBL_stackbeg;
        } > IRAM

}

