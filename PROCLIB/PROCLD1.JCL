//*-------------------------------------------------------------------*/00001001
//*                     POPUP MAINFRAME LTD                           */00002001
//*                                                                   */00003001
//*  COPYRIGHT © 2023-2024 POPUP MAINFRAME LTD ALL RIGHTS RESERVED    */00004001
//*                                                                   */00005001
//*                  (    DB2  DATABASE     )                         */00006001
//*-------------------------------------------------------------------*/00007001
//LOADPROC  PROC HLQ=SEEJOB,                                            00010000
//          APP=SEEJOB                                                  00020000
//**********************************************************************00030000
//************ PROC FOR LOADING TABLES**********************************00040000
//**********************************************************************00050000
//PROC10    EXEC DSNUPROC,SYSTEM=DBCG,UID='IBMUSER'                     00060000
//STEPLIB  DD  DSN=DSNC10.SDSNLOAD,DISP=SHR                             00070000
//DSNTRACE DD  SYSOUT=*                                                 00080000
//SORTLIB  DD  DSN=SYS1.SORTLIB,DISP=SHR                                00090000
//SORTWK01 DD  UNIT=SYSDA,SPACE=(4000,(20,20),,,ROUND)                  00100000
//SORTWK02 DD  UNIT=SYSDA,SPACE=(4000,(20,20),,,ROUND)                  00110000
//SORTWK03 DD  UNIT=SYSDA,SPACE=(4000,(20,20),,,ROUND)                  00120000
//SORTWK04 DD  UNIT=SYSDA,SPACE=(4000,(20,20),,,ROUND)                  00130000
//SORTOUT  DD  UNIT=SYSDA,SPACE=(4000,(20,20),,,ROUND)                  00140000
//SYSREC00   DD DSN=&HLQ..&APP..UNLOAD,                                 00150000
//            DISP=SHR                                                  00160000
//SYSMAP    DD  DSN=&HLQ..&APP..SYSMAP,DISP=SHR                         00161000
//SYSUT1    DD  UNIT=SYSDA,SPACE=(4000,(20,20),,,ROUND)                 00170000
//SYSIN     DD  DSN=&HLQ..&APP..SYSPUNC,DISP=SHR                        00180000
