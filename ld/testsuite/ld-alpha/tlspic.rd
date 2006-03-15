#source: align.s
#source: tlspic1.s
#source: tlspic2.s
#as:
#ld: -shared -melf64alpha
#readelf: -WSsrl
#target: alpha*-*-*

There are 18 section headers, starting at offset 0x[0-9a-f]+:

Section Headers:
 +\[Nr\] Name +Type +Address +Off +Size +ES Flg Lk Inf Al
 +\[ 0\] +NULL +0+ 0+ 0+ 0+ +0 +0 +0
 +\[ 1\] .hash +.*
 +\[ 2\] .dynsym +.*
 +\[ 3\] .dynstr +.*
 +\[ 4\] .rela.dyn +.*
 +\[ 5\] .rela.plt +.*
 +\[ 6\] .text +PROGBITS +0+1000 0+1000 0+ac 0+ +AX +0 +0 4096
 +\[ 7\] .data +.*
 +\[ 8\] .tdata +PROGBITS +0+12000 0+2000 0+60 0+ WAT +0 +0 +4
 +\[ 9\] .tbss +NOBITS +0+12060 0+2060 0+20 0+ WAT +0 +0 +1
 +\[10\] .dynamic +DYNAMIC +0+12060 0+2060 0+130 10 +WA +3 +0 +8
 +\[11\] .plt +.*
 +\[12\] .got +PROGBITS +0+121c0 0+21c0 0+58 0+ +WA +0 +0 +8
 +\[13\] .sbss +.*
 +\[14\] .bss +.*
 +\[15\] .shstrtab +.*
 +\[16\] .symtab +.*
 +\[17\] .strtab +.*
#...

Elf file type is DYN \(Shared object file\)
Entry point 0x1000
There are 4 program headers, starting at offset [0-9a-f]+

Program Headers:
 +Type +Offset +VirtAddr +PhysAddr +FileSiz +MemSiz +Flg Align
 +LOAD +0x0+ 0x0+ 0x0+ 0x0+10ac 0x0+10ac R E 0x10000
 +LOAD +0x0+2000 0x0+12000 0x0+12000 0x0+218 0x0+218 RWE 0x10000
 +DYNAMIC +0x0+2060 0x0+12060 0x0+12060 0x0+130 0x0+130 RW +0x8
 +TLS +0x0+2000 0x0+12000 0x0+12000 0x0+60 0x0+80 R +0x4
#...

Relocation section '.rela.dyn' at offset 0x[0-9a-f]+ contains 7 entries:
 +Offset +Info +Type +Symbol's Value +Symbol's Name \+ Addend
0+121c8 +0+160000001f R_ALPHA_DTPMOD64 +0+ sg1 \+ 0
0+121d0 +0+1600000021 R_ALPHA_DTPREL64 +0+ sg1 \+ 0
0+121e0 +0+1900000026 R_ALPHA_TPREL64 +0+4 sg2 \+ 0
0+121e8 +0+26 R_ALPHA_TPREL64 +0+44
0+121f0 +0+1f R_ALPHA_DTPMOD64 +0+
0+12200 +0+1f R_ALPHA_DTPMOD64 +0+
0+12210 +0+26 R_ALPHA_TPREL64 +0+24

Relocation section '.rela.plt' at offset 0x[0-9a-f]+ contains 1 entries:
 +Offset +Info +Type +Symbol's Value +Symbol's Name \+ Addend
0+121c0 +0+150000001a R_ALPHA_JMP_SLOT +0+ __tls_get_addr \+ 0

Symbol table '.dynsym' contains 31 entries:
   Num:    Value          Size Type    Bind   Vis      Ndx Name
     0: 0+     0 NOTYPE  LOCAL  DEFAULT  UND 
     1: 0+120     0 SECTION LOCAL  DEFAULT    1 
     2: 0+2b0     0 SECTION LOCAL  DEFAULT    2 
     3: 0+598     0 SECTION LOCAL  DEFAULT    3 
     4: 0+620     0 SECTION LOCAL  DEFAULT    4 
     5: 0+6c8     0 SECTION LOCAL  DEFAULT    5 
     6: 0+1000     0 SECTION LOCAL  DEFAULT    6 
     7: 0+12000     0 SECTION LOCAL  DEFAULT    7 
     8: 0+12000     0 SECTION LOCAL  DEFAULT    8 
     9: 0+12060     0 SECTION LOCAL  DEFAULT    9 
    10: 0+12060     0 SECTION LOCAL  DEFAULT   10 
    11: 0+12190     0 SECTION LOCAL  DEFAULT   11 
    12: 0+121c0     0 SECTION LOCAL  DEFAULT   12 
    13: 0+12218     0 SECTION LOCAL  DEFAULT   13 
    14: 0+12218     0 SECTION LOCAL  DEFAULT   14 
    15: 0+1c     0 TLS     GLOBAL DEFAULT    8 sg8
    16: 0+12060     0 OBJECT  GLOBAL DEFAULT  ABS _DYNAMIC
    17: 0+8     0 TLS     GLOBAL DEFAULT    8 sg3
    18: 0+c     0 TLS     GLOBAL DEFAULT    8 sg4
    19: 0+10     0 TLS     GLOBAL DEFAULT    8 sg5
    20: 0+12190     0 OBJECT  GLOBAL DEFAULT  ABS _PROCEDURE_LINKAGE_TABLE_
    21: 0+     0 NOTYPE  GLOBAL DEFAULT  UND __tls_get_addr
    22: 0+     0 TLS     GLOBAL DEFAULT    8 sg1
    23: 0+1000   172 FUNC    GLOBAL DEFAULT    6 fn1
    24: 0+12218     0 NOTYPE  GLOBAL DEFAULT  ABS __bss_start
    25: 0+4     0 TLS     GLOBAL DEFAULT    8 sg2
    26: 0+14     0 TLS     GLOBAL DEFAULT    8 sg6
    27: 0+18     0 TLS     GLOBAL DEFAULT    8 sg7
    28: 0+12218     0 NOTYPE  GLOBAL DEFAULT  ABS _edata
    29: 0+121c0     0 OBJECT  GLOBAL DEFAULT  ABS _GLOBAL_OFFSET_TABLE_
    30: 0+12218     0 NOTYPE  GLOBAL DEFAULT  ABS _end

Symbol table '.symtab' contains 58 entries:
 +Num: +Value +Size Type +Bind +Vis +Ndx Name
 +0: 0+ +0 NOTYPE +LOCAL +DEFAULT +UND 
 +1: 0+[0-9a-f]+ +0 SECTION LOCAL +DEFAULT +1 
 +2: 0+[0-9a-f]+ +0 SECTION LOCAL +DEFAULT +2 
 +3: 0+[0-9a-f]+ +0 SECTION LOCAL +DEFAULT +3 
 +4: 0+[0-9a-f]+ +0 SECTION LOCAL +DEFAULT +4 
 +5: 0+[0-9a-f]+ +0 SECTION LOCAL +DEFAULT +5 
 +6: 0+1000 +0 SECTION LOCAL +DEFAULT +6 
 +7: 0+12000 +0 SECTION LOCAL +DEFAULT +7 
 +8: 0+12000 +0 SECTION LOCAL +DEFAULT +8 
 +9: 0+12060 +0 SECTION LOCAL +DEFAULT +9 
 +10: 0+12060 +0 SECTION LOCAL +DEFAULT +10 
 +11: 0+12190 +0 SECTION LOCAL +DEFAULT +11 
 +12: 0+121c0 +0 SECTION LOCAL +DEFAULT +12 
 +13: 0+[0-9a-f]+ +0 SECTION LOCAL +DEFAULT +13 
 +14: 0+[0-9a-f]+ +0 SECTION LOCAL +DEFAULT +14 
 +15: 0+ +0 SECTION LOCAL +DEFAULT +15 
 +16: 0+ +0 SECTION LOCAL +DEFAULT +16 
 +17: 0+ +0 SECTION LOCAL +DEFAULT +17 
 +18: 0+20 +0 TLS +LOCAL +DEFAULT +8 sl1
 +19: 0+24 +0 TLS +LOCAL +DEFAULT +8 sl2
 +20: 0+28 +0 TLS +LOCAL +DEFAULT +8 sl3
 +21: 0+2c +0 TLS +LOCAL +DEFAULT +8 sl4
 +22: 0+30 +0 TLS +LOCAL +DEFAULT +8 sl5
 +23: 0+34 +0 TLS +LOCAL +DEFAULT +8 sl6
 +24: 0+38 +0 TLS +LOCAL +DEFAULT +8 sl7
 +25: 0+3c +0 TLS +LOCAL +DEFAULT +8 sl8
 +26: 0+60 +0 TLS +LOCAL +HIDDEN +9 sH1
 +27: 0+48 +0 TLS +LOCAL +HIDDEN +8 sh3
 +28: 0+64 +0 TLS +LOCAL +HIDDEN +9 sH2
 +29: 0+78 +0 TLS +LOCAL +HIDDEN +9 sH7
 +30: 0+58 +0 TLS +LOCAL +HIDDEN +8 sh7
 +31: 0+5c +0 TLS +LOCAL +HIDDEN +8 sh8
 +32: 0+6c +0 TLS +LOCAL +HIDDEN +9 sH4
 +33: 0+4c +0 TLS +LOCAL +HIDDEN +8 sh4
 +34: 0+68 +0 TLS +LOCAL +HIDDEN +9 sH3
 +35: 0+50 +0 TLS +LOCAL +HIDDEN +8 sh5
 +36: 0+70 +0 TLS +LOCAL +HIDDEN +9 sH5
 +37: 0+74 +0 TLS +LOCAL +HIDDEN +9 sH6
 +38: 0+7c +0 TLS +LOCAL +HIDDEN +9 sH8
 +39: 0+40 +0 TLS +LOCAL +HIDDEN +8 sh1
 +40: 0+44 +0 TLS +LOCAL +HIDDEN +8 sh2
 +41: 0+54 +0 TLS +LOCAL +HIDDEN +8 sh6
 +42: 0+1c +0 TLS +GLOBAL DEFAULT +8 sg8
 +43: 0+12060 +0 OBJECT +GLOBAL DEFAULT +ABS _DYNAMIC
 +44: 0+8 +0 TLS +GLOBAL DEFAULT +8 sg3
 +45: 0+c +0 TLS +GLOBAL DEFAULT +8 sg4
 +46: 0+10 +0 TLS +GLOBAL DEFAULT +8 sg5
 +47: 0+12190 +0 OBJECT +GLOBAL DEFAULT +ABS _PROCEDURE_LINKAGE_TABLE_
 +48: 0+ +0 NOTYPE +GLOBAL DEFAULT +UND __tls_get_addr
 +49: 0+ +0 TLS +GLOBAL DEFAULT +8 sg1
 +50: 0+1000 +172 FUNC +GLOBAL DEFAULT +6 fn1
 +51: 0+[0-9a-f]+ +0 NOTYPE +GLOBAL DEFAULT +ABS __bss_start
 +52: 0+4 +0 TLS +GLOBAL DEFAULT +8 sg2
 +53: 0+14 +0 TLS +GLOBAL DEFAULT +8 sg6
 +54: 0+18 +0 TLS +GLOBAL DEFAULT +8 sg7
 +55: 0+[0-9a-f]+ +0 NOTYPE +GLOBAL DEFAULT +ABS _edata
 +56: 0+121c0 +0 OBJECT +GLOBAL DEFAULT +ABS _GLOBAL_OFFSET_TABLE_
 +57: 0+[0-9a-f]+ +0 NOTYPE +GLOBAL DEFAULT +ABS _end
