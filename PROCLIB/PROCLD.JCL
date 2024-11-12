//*-------------------------------------------------------------------*/00001005
//*                     POPUP MAINFRAME LTD                           */00002005
//*                                                                   */00003005
//*  COPYRIGHT © 2023-2024 POPUP MAINFRAME LTD ALL RIGHTS RESERVED    */00004005
//*                                                                   */00005005
//*                  (    DB2  DATABASE     )                         */00006005
//*-------------------------------------------------------------------*/00007005
//LOADPROC  PROC HLQ=SEEJOB,                                            00010000
//          APP=SEEJOB                                                  00020000
//**********************************************************************00030003
//************ PROC FOR LOADING TABLES**********************************00040003
//**********************************************************************00050003
//PROC10    EXEC DSNUPROC,SYSTEM=DBCG,UID='IBMUSER'                     00070004
//STEPLIB  DD  DSN=DSNC10.SDSNLOAD,DISP=SHR                             00080000
//DSNTRACE DD  SYSOUT=*                                                 00090000
//SORTLIB  DD  DSN=SYS1.SORTLIB,DISP=SHR                                00100000
//SORTWK01 DD  UNIT=SYSDA,SPACE=(4000,(20,20),,,ROUND)                  00110000
//SORTWK02 DD  UNIT=SYSDA,SPACE=(4000,(20,20),,,ROUND)                  00120000
//SORTWK03 DD  UNIT=SYSDA,SPACE=(4000,(20,20),,,ROUND)                  00130000
//SORTWK04 DD  UNIT=SYSDA,SPACE=(4000,(20,20),,,ROUND)                  00140000
//SORTOUT  DD  UNIT=SYSDA,SPACE=(4000,(20,20),,,ROUND)                  00150000
//SYSREC00   DD DSN=&HLQ..&APP..UNLOAD,                                 00160002
//            DISP=SHR                                                  00170000
//SYSUT1    DD  UNIT=SYSDA,SPACE=(4000,(20,20),,,ROUND)                 00180000
//SYSIN     DD  DSN=&HLQ..&APP..SYSPUNC,DISP=SHR                        00190002
