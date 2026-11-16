; olang - emitted by the self-hosted compiler (compiler/emit.olang)
target triple = "x86_64-pc-linux-gnu"

%olang.chunk = type { ptr, i64, i64, i64, i64, i64, ptr, i64 }
%olang.pool = type { [128 x ptr], i128, i64, i64, i64 }
%olang.dtornode = type { ptr, ptr, ptr, ptr, ptr }
%olang.unwind = type { ptr, ptr, ptr }
%olang.task = type { ptr, i64, ptr, i64, ptr }
%olang.worker = type { ptr, ptr, ptr, i64, ptr, [40 x i8], [48 x i8] }
%olang.merge = type { ptr, ptr }
%olang.scope = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%olang.region = type { %olang.scope, %olang.scope, ptr, ptr, ptr, ptr, ptr, i64 }
%olang.slotscope = type { %olang.scope, i64, [8 x ptr] }
%olang.stackrun = type { ptr, ptr, i32, i32, ptr, ptr }
%olang.builder = type { ptr, i64, i64, ptr, ptr }
%"<termios.h>:termios" = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
@G_2e_3ctermios_2eh_3e_2eADDRB = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\20" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB0 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB1000000 = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB110 = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB115200 = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB1152000 = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB1200 = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB134 = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB150 = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB1500000 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB1800 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB19200 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB200 = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB2000000 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB230400 = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB2400 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB2500000 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB300 = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB3000000 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB3500000 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB38400 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB4000000 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB460800 = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB4800 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB50 = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB500000 = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB57600 = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB576000 = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB600 = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB75 = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB921600 = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eB9600 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eBRKINT = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eBS0 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eBS1 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eBSDLY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCBAUD = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCBAUDEX = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCBRK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCDISCARD = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCDSUSP = constant <{ [4 x i8] }> <{ [4 x i8] c"\19\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCEOF = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCEOL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCEOT = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCERASE = constant <{ [4 x i8] }> <{ [4 x i8] c"\7F\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCFLUSH = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCIBAUD = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\0F\10" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCINTR = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCKILL = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCLNEXT = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCLOCAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCMIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCMSPAR = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\40" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCQUIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\1C\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCR0 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCR1 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCR2 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCR3 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\06\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCRDLY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\06\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCREAD = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCREPRINT = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCRPRNT = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCRTSCTS = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\80\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCS5 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCS6 = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCS7 = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCS8 = constant <{ [4 x i8] }> <{ [4 x i8] c"\30\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCSIZE = constant <{ [4 x i8] }> <{ [4 x i8] c"\30\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCSTART = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCSTATUS = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCSTOP = constant <{ [4 x i8] }> <{ [4 x i8] c"\13\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCSTOPB = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCSUSP = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eCWERASE = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eECHO = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eECHOCTL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eECHOE = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eECHOK = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eECHOKE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eECHONL = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eECHOPRT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eEXTA = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eEXTB = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eEXTPROC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\01\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eFF0 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eFF1 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\80\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eFFDLY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\80\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eFLUSHO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eHUPCL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eICANON = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eICRNL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eIEXTEN = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\80\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eIGNBRK = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eIGNCR = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eIGNPAR = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eIMAXBEL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eINLCR = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eINPCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eISIG = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eISTRIP = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eIUCLC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eIUTF8 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eIXANY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eIXOFF = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eIXON = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eNCCS = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eNL0 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eNL1 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eNLDLY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eNOFLSH = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eOCRNL = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eOFDEL = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eOFILL = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eOLCUC = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eONLCR = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eONLRET = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eONOCR = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eOPOST = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2ePARENB = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2ePARMRK = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2ePARODD = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2ePENDIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTAB0 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTAB1 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTAB2 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTAB3 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\18\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTABDLY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\18\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTCIFLUSH = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTCIOFF = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTCIOFLUSH = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTCION = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTCOFLUSH = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTCOOFF = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTCOON = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTCSADRAIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTCSAFLUSH = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTCSANOW = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTIOCSER__TEMT = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTOSTOP = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTTYDEF__CFLAG = constant <{ [4 x i8] }> <{ [4 x i8] c"\A0\05\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTTYDEF__IFLAG = constant <{ [4 x i8] }> <{ [4 x i8] c"\22\2D\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTTYDEF__LFLAG = constant <{ [4 x i8] }> <{ [4 x i8] c"\1B\8A\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTTYDEF__OFLAG = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\18\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eTTYDEF__SPEED = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVDISCARD = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVEOF = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVEOL = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVEOL2 = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVERASE = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVINTR = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVKILL = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVLNEXT = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVMIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVQUIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVREPRINT = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVSTART = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVSTOP = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVSUSP = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVSWTC = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVT0 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVT1 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVTDLY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eVWERASE = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eXCASE = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3ctermios_2eh_3e_2eXTABS = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\18\00\00" }>, align 8
define dso_local %"<termios.h>:termios" @_3ctermios_2eh_3e_3atermios_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i8
  %l8 = alloca [32 x i8]
  %rv = alloca %"<termios.h>:termios"
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l0, !tbaa !64
  store i32 0, ptr %l1, !tbaa !64
  store i32 0, ptr %l2, !tbaa !64
  store i32 0, ptr %l3, !tbaa !64
  store i8 0, ptr %l4, !tbaa !22
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 32
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [32 x i8], ptr %l8, i64 0, i64 %t5
  store i8 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  %t9 = load [32 x i8], ptr %l8
  %t10 = load i32, ptr %l0, !tbaa !64
  %t11 = insertvalue %"<termios.h>:termios" undef, i32 %t10, 0
  %t12 = load i32, ptr %l1, !tbaa !64
  %t13 = insertvalue %"<termios.h>:termios" %t11, i32 %t12, 1
  %t14 = load i32, ptr %l2, !tbaa !64
  %t15 = insertvalue %"<termios.h>:termios" %t13, i32 %t14, 2
  %t16 = load i32, ptr %l3, !tbaa !64
  %t17 = insertvalue %"<termios.h>:termios" %t15, i32 %t16, 3
  %t18 = load i8, ptr %l4, !tbaa !22
  %t19 = insertvalue %"<termios.h>:termios" %t17, i8 %t18, 4
  %t21 = insertvalue %"<termios.h>:termios" %t19, [32 x i8] %t9, 5
  %t23 = insertvalue %"<termios.h>:termios" %t21, i32 0, 6
  %t25 = insertvalue %"<termios.h>:termios" %t23, i32 0, 7
  store %"<termios.h>:termios" %t25, ptr %rv
  br label %ret
ret:
  %rr = load %"<termios.h>:termios", ptr %rv
  ret %"<termios.h>:termios" %rr
}


!20 = !{!"olang"}
!99 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{!"scopehdr", !20, i64 0}
!50 = !{!"chunkhdr", !20, i64 0}
!59 = !{!49, !49, i64 0}
!60 = !{!50, !50, i64 0}
!17 = !{!"arraydesc", !20, i64 0}
!18 = !{!"closure", !20, i64 0}
!47 = !{!"arraydesc[]", !20, i64 0}
!19 = !{!"ref", !20, i64 0}
!48 = !{!"ref[]", !20, i64 0}
!29 = !{!19, !19, i64 0}
!39 = !{!48, !48, i64 0}
!27 = !{!17, !17, i64 0}
!28 = !{!18, !18, i64 0}
!37 = !{!47, !47, i64 0}
!11 = !{!"bool", !20, i64 0}
!21 = !{!11, !11, i64 0}
!41 = !{!"bool[]", !20, i64 0}
!31 = !{!41, !41, i64 0}
!51 = !{!"i8", !20, i64 0}
!61 = !{!51, !51, i64 0}
!91 = !{!"i8[]", !20, i64 0}
!81 = !{!91, !91, i64 0}
!52 = !{!"i16", !20, i64 0}
!62 = !{!52, !52, i64 0}
!92 = !{!"i16[]", !20, i64 0}
!82 = !{!92, !92, i64 0}
!13 = !{!"int32", !20, i64 0}
!23 = !{!13, !13, i64 0}
!43 = !{!"int32[]", !20, i64 0}
!33 = !{!43, !43, i64 0}
!14 = !{!"int64", !20, i64 0}
!24 = !{!14, !14, i64 0}
!44 = !{!"int64[]", !20, i64 0}
!34 = !{!44, !44, i64 0}
!12 = !{!"byte", !20, i64 0}
!22 = !{!12, !12, i64 0}
!42 = !{!"byte[]", !20, i64 0}
!32 = !{!42, !42, i64 0}
!53 = !{!"u16", !20, i64 0}
!63 = !{!53, !53, i64 0}
!93 = !{!"u16[]", !20, i64 0}
!83 = !{!93, !93, i64 0}
!54 = !{!"u32", !20, i64 0}
!64 = !{!54, !54, i64 0}
!94 = !{!"u32[]", !20, i64 0}
!84 = !{!94, !94, i64 0}
!55 = !{!"u64", !20, i64 0}
!65 = !{!55, !55, i64 0}
!95 = !{!"u64[]", !20, i64 0}
!85 = !{!95, !95, i64 0}
!56 = !{!"f16", !20, i64 0}
!66 = !{!56, !56, i64 0}
!96 = !{!"f16[]", !20, i64 0}
!86 = !{!96, !96, i64 0}
!57 = !{!"bf16", !20, i64 0}
!67 = !{!57, !57, i64 0}
!97 = !{!"bf16[]", !20, i64 0}
!87 = !{!97, !97, i64 0}
!15 = !{!"float32", !20, i64 0}
!25 = !{!15, !15, i64 0}
!45 = !{!"float32[]", !20, i64 0}
!35 = !{!45, !45, i64 0}
!16 = !{!"float64", !20, i64 0}
!26 = !{!16, !16, i64 0}
!46 = !{!"float64[]", !20, i64 0}
!36 = !{!46, !46, i64 0}

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-ndd,-pconfig,-pku,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
