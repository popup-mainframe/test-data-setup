//*-------------------------------------------------------------------*/00000108
//*                     POPUP MAINFRAME LTD                           */00000208
//*                                                                   */00000308
//*  COPYRIGHT © 2023-2024 POPUP MAINFRAME LTD ALL RIGHTS RESERVED    */00000408
//*                                                                   */00000508
//*                  (    DB2  DATABASE     )                         */00000608
//*-------------------------------------------------------------------*/00000708
//UNLDPROC PROC HLQ=SEEJOB,                                             00001000
//         APP=SEEJOB,                                                  00002000
//         CARD=SEEJOB                                                  00003000
//********************************************************************* 00003106
//****************** PRE DELETION ************************************* 00003206
//********************************************************************* 00003306
//DELETE      EXEC PGM=IEFBR14                                          00003406
//SYSPRINT    DD SYSOUT=*                                               00003506
//SYSOUT      DD SYSOUT=*                                               00003606
//SYSDUMP     DD SYSOUT=*                                               00003706
//D1          DD DSN=&HLQ..&APP..SYSPUNC,DISP=(OLD,DELETE,DELETE)       00003806
//D2          DD DSN=&HLQ..&APP..UNLOAD,DISP=(OLD,DELETE,DELETE)        00003906
//**********************************************************************00004005
//************ PROC FOR UNLOAD TABLES   ********************************00005005
//**********************************************************************00006005
//ULDP1    EXEC PGM=IKJEFT01,DYNAMNBR=20                                00010000
//STEPLIB  DD  DSN=DSNC10.SDSNLOAD,DISP=SHR                             00020000
//SYSTSPRT DD  SYSOUT=*                                                 00030000
//SYSTSIN  DD  DSN=&HLQ..DEV.CARDLIB(CARDSYT2),DISP=SHR                 00040005
//SYSPRINT DD SYSOUT=*                                                  00050000
//SYSUDUMP DD SYSOUT=*                                                  00060000
//SYSPUNCH DD DSN=&HLQ..&APP..SYSPUNC,                                  00070002
//            DISP=(NEW,CATLG,DELETE),                                  00080000
//            UNIT=SYSDA,                                               00090000
//            SPACE=(TRK,(10,5)),                                       00100000
//            DCB=(RECFM=FB,BLKSIZE=3450)                               00110007
//*           DCB=(RECFM=FB,LRECL=345,BLKSIZE=3450)                     00111007
//SYSREC00 DD DSN=&HLQ..&APP..UNLOAD,                                   00120002
//            DISP=(NEW,CATLG,DELETE),                                  00130000
//            UNIT=SYSDA,                                               00140000
//            SPACE=(TRK,(10,5)),                                       00150000
//            DCB=(RECFM=FB,BLKSIZE=3450)                               00160007
//*           DCB=(RECFM=FB,LRECL=345,BLKSIZE=3450)                     00161007
//SYSIN    DD DSN=&HLQ..DEV.CARDLIB(&CARD),DISP=SHR                     00170005
//*                                                                     00190000
