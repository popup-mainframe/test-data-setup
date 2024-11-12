//*-------------------------------------------------------------------*/00000101
//*                     POPUP MAINFRAME LTD                           */00000201
//*                                                                   */00000301
//*  COPYRIGHT © 2023-2024 POPUP MAINFRAME LTD ALL RIGHTS RESERVED    */00000401
//*                                                                   */00000501
//*                  (    DB2  DATABASE     )                         */00000601
//*-------------------------------------------------------------------*/00000701
//UNLDPROC PROC HLQ=SEEJOB,                                             00001000
//         APP=SEEJOB,                                                  00002000
//         CARD=SEEJOB                                                  00003000
//********************************************************************* 00003100
//****************** PRE DELETION ************************************* 00003200
//********************************************************************* 00003300
//DELETE      EXEC PGM=IEFBR14                                          00003400
//SYSPRINT    DD SYSOUT=*                                               00003500
//SYSOUT      DD SYSOUT=*                                               00003600
//SYSDUMP     DD SYSOUT=*                                               00003700
//D1          DD DSN=&HLQ..&APP..SYSPUNC,DISP=(OLD,DELETE,DELETE)       00003800
//D2          DD DSN=&HLQ..&APP..UNLOAD,DISP=(OLD,DELETE,DELETE)        00003900
//D3          DD DSN=&HLQ..&APP..SYSMAP,DISP=(OLD,DELETE,DELETE)        00004000
//**********************************************************************00004100
//************ PROC FOR UNLOAD TABLES   ********************************00005000
//**********************************************************************00006000
//ULDP1    EXEC PGM=IKJEFT01,DYNAMNBR=20                                00007000
//STEPLIB  DD  DSN=DSNC10.SDSNLOAD,DISP=SHR                             00008000
//SYSTSPRT DD  SYSOUT=*                                                 00009000
//SYSTSIN  DD  DSN=&HLQ..DEV.CARDLIB(CARDSYT2),DISP=SHR                 00010000
//SYSPRINT DD SYSOUT=*                                                  00020000
//SYSUDUMP DD SYSOUT=*                                                  00030000
//SYSMAP   DD DSN=&HLQ..&APP..SYSMAP,                                   00031000
//            DISP=(NEW,CATLG,DELETE),                                  00032000
//            SPACE=(TRK,(10,5,)),                                      00033000
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)                       00034000
//SYSPUNCH DD DSN=&HLQ..&APP..SYSPUNC,                                  00040000
//            DISP=(NEW,CATLG,DELETE),                                  00050000
//            UNIT=SYSDA,                                               00060000
//            SPACE=(TRK,(10,5)),                                       00070000
//            DCB=(RECFM=FB,BLKSIZE=3450)                               00080000
//*           DCB=(RECFM=FB,LRECL=345,BLKSIZE=3450)                     00090000
//SYSREC00 DD DSN=&HLQ..&APP..UNLOAD,                                   00100000
//            DISP=(NEW,CATLG,DELETE),                                  00110000
//            UNIT=SYSDA,                                               00120000
//            SPACE=(TRK,(10,5)),                                       00130000
//            DCB=(RECFM=FB,BLKSIZE=3450)                               00140000
//*           DCB=(RECFM=FB,LRECL=345,BLKSIZE=3450)                     00150000
//SYSIN    DD DSN=&HLQ..DEV.CARDLIB(&CARD),DISP=SHR                     00160000
//*                                                                     00170000
