#!/bin/bash
cd "D:\Data\northernlion"
#Rebirth:
mkdir "input_rb"
cd "input_rb"
youtube-dl --skip-download --write-auto-sub --srt-lang en --sub-format vtt "www.youtube.com/watch?v=DRXY0J2V0f8&list=PL1bauNEiHIgyfeY17IPFH1LW0tRwPRYRf"
cd ..
#Afterbirth:
mkdir "input_ab"
cd "input_ab"
youtube-dl --skip-download --write-auto-sub --srt-lang en --sub-format vtt "www.youtube.com/watch?v=M78vS_8xa9I&list=PL1bauNEiHIgxMmZpra5SAuzqr0yyPwNI2"
cd ..
#Afterbirth+
mkdir "input_abp"
cd "input_abp"
youtube-dl --skip-download --write-auto-sub --srt-lang en --sub-format vtt "www.youtube.com/watch?v=Sj5cufktYVI&list=PL1bauNEiHIgwWzA2cOTeTW-nZeWsH7JPH"
cd ..
