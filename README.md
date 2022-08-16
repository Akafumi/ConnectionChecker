# Connection Checker

## 機能

- 機能1: コマンドプロンプトのみで日付付きのpingの返答の出力機能
- 機能2: ログファイルの出力機能

(コマンドプロンプトのみと言ってはいるが実際はpowershellのコマンドをcmdで出力している)
## 必要要件

* Windows OSである事
* コマンドプロンプト，およびPowerShellがインストールされている事

(製作者はWindows 10でしか動作検証を行っていない為，他のバージョンでの動作保証はできない．)

## 導入方法

1. 本ツールをダウンロードする．
2. git hubからのダウンロードを行うと，改行コードが `LF` になってしまうので， `ConnectionChecker.bat` と `ping.ps1` の改行コードを `CRLF` に変更する．(VScodeなどで行えます．)
3. `ConnectionChecker.bat` と `ping.ps1` をクリックすると警告が表示される．
4. `ConnectionChecker.bat` の場合は `詳細情報` -> `実行` へ進み， `ping.ps1` の場合は許可する．

## 使い方

1. 本ツールをダウンロードする．
2. cmd を起動し，本ツールのあるディレクトリに移動する．
3. 次のコマンドを実行．
```
ConnectionChecker.bat
```
4. IPアドレスを入力する用求められるのでping先のIPアドレスを入力する．
5. ファイルの出力の可否を問われるので，y/nで回答する．
6. 出力を止めるには `Ctrl` + `c` で中止できる．

## 製作者

* 製作者: Akafumi
* 所属: 電気通信大学
* E-mail: 
* Twitter: @Akafumi0513_2
