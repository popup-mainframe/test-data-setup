//*-------------------------------------------------------------------*/
//*                     POPUP MAINFRAME LTD                           */
//*                                                                   */
//*  COPYRIGHT © 2023-2024 POPUP MAINFRAME LTD ALL RIGHTS RESERVED    */
//*                                                                   */
//*                  (    DB2  DATABASE     )                         */
//*-------------------------------------------------------------------*/
//CRTEINS  PROC HLQ=SEEJOB,
//         APP=SEEJOB,
//         CARD=SEEJOB
//*****************************************************************
//PROC1     EXEC PGM=IKJEFT01,DYNAMNBR=20
//STEPLIB   DD DSN=DSNC10.SDSNLOAD,DISP=SHR
//          DD DSN=DSNC10.DBCG.RUNLIB.LOAD,DISP=SHR
//          DD DSN=DSNC10.DBCG.SDSNEXIT,DISP=SHR
//SYSTSPRT  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSTSIN   DD DSN=&HLQ..&APP..CARDLIB(CARDSYT3),DISP=SHR
//SYSIN     DD DSN=&HLQ..&APP..CARDLIB(&CARD),DISP=SHR
//
