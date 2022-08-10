chcp 65001
@echo off 

echo ====================
echo Connection Checker Ver1.0
echo pingを用いたネットワークの接続確認用のツールです．
echo ====================

set ipaddr=other
:ipaddr
set /P ipaddr="IPアドレス :"

if %ipaddr% == other (
  echo IPアドレスの入力が確認できませんでした
  echo 再度入力してください
  goto :ipaddr
)

set YYYY=%date:~0,4%
set MMDD=%date:~-5,2%%date:~-2,2%
set HHMMSS=%time: =0%
set HH=%HHMMSS:~0,2%
set MM=%HHMMSS:~3,2%
set SS=%HHMMSS:~6,2%

@REM set filedate=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
set filedate=%YYYY%%MMDD%_%HH%%MM%%SS%
set filename=%ipaddr%_%filedate%.log

echo --------------------
echo IPアドレス :%ipaddr%
echo 出力ファイル名 :%filename%
echo --------------------

set yn=other
:output
set /P yn="ファイルへの出力を行いますか？ (y/n) : "

if %yn%==y (
  echo ファイルへの出力を行います
  powershell -ExecutionPolicy RemoteSigned -File .\ping.ps1 %ipaddr% > ./log/%filename%
  cmd /k
)else if %yn%==Y (
  echo ファイルへの出力を行います
  powershell -ExecutionPolicy RemoteSigned -File .\ping.ps1 %ipaddr% > ./log/%filename%
  cmd /k
)else if %yn%==n (
  echo ファイルへの出力は行いません
  echo 結果を表示します
  powershell -ExecutionPolicy RemoteSigned -File .\ping.ps1 %ipaddr%
  cmd /k
)else if %yn%==n (
  echo ファイルへの出力は行いません
  echo 結果を表示します
  powershell -ExecutionPolicy RemoteSigned -File .\ping.ps1 %ipaddr%
  cmd /k
) else (
  echo y/nで答えてください
  goto :output
)


