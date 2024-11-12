//*-------------------------------------------------------------------*/
//*                     POPUP MAINFRAME LTD                           */
//*                                                                   */
//*  COPYRIGHT © 2023-2024 POPUP MAINFRAME LTD ALL RIGHTS RESERVED    */
//*                                                                   */
//*                  (    DB2  DATABASE     )                         */
//*-------------------------------------------------------------------*/
//DRPPROC PROC HLQ=SEEJOB,
//             APP=SEEJOB,
//             CARD=SEEJOB
//**********************************************************************
//************ PROC FOR DROP  DATABASE  ********************************
//**********************************************************************
//DRPP1    EXEC PGM=IKJEFT01,DYNAMNBR=20
//STEPLIB  DD  DSN=DSNC10.DBCG.SDSNEXIT,DISP=SHR
//         DD  DSN=DSNC10.SDSNLOAD,DISP=SHR
//SYSTSPRT DD  SYSOUT=*
//SYSTSIN  DD  DSN=&HLQ..&APP..CARDLIB(CARDSYT1),DISP=SHR
//SYSPRINT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSIN    DD  DSN=&HLQ..&APP..CARDLIB(&CARD),DISP=SHR
//*
