//*-------------------------------------------------------------------*/00001006
//*                     POPUP MAINFRAME LTD                           */00002006
//*                                                                   */00003006
//*  COPYRIGHT © 2023-2024 POPUP MAINFRAME LTD ALL RIGHTS RESERVED    */00004006
//*                                                                   */00005006
//*                  (    DB2  DATABASE     )                         */00006006
//*-------------------------------------------------------------------*/00007006
//CRTEPROC PROC HLQ=SEEJOB,                                             00010000
//         APP=SEEJOB,                                                  00020000
//         CARD=SEEJOB                                                  00030001
//**********************************************************************00040004
//************ PROC FOR CREATE DATABASE,TABLES**************************00050004
//**********************************************************************00051004
//PROC1    EXEC PGM=IKJEFT01,DYNAMNBR=20                                00060000
//STEPLIB  DD  DSN=DSNC10.DBCG.SDSNEXIT,DISP=SHR                        00070000
//         DD  DSN=DSNC10.SDSNLOAD,DISP=SHR                             00080000
//SYSTSPRT DD  SYSOUT=*                                                 00090000
//SYSTSIN  DD  DSN=&HLQ..&APP..CARDLIB(CARDSYT1),DISP=SHR               00100004
//SYSPRINT DD  SYSOUT=*                                                 00110000
//SYSUDUMP DD  SYSOUT=*                                                 00120000
//SYSIN    DD  DSN=&HLQ..&APP..CARDLIB(&CARD),DISP=SHR                  00130005
//*                                                                     00150000
