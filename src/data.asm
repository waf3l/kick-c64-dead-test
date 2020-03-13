#importonce
#import "./zeropage.asm"

.const  BORDER_COLOR            = $05
.const  BACKGROUND_COLOR        = $01


vicMap:
        .byte $00,$00,$00,$00,$00,$00,$00,$00
        .byte $00,$00,$00,$00,$00,$00,$00,$00
        .byte $00,$1b,$00,$00,$00,$00,$08,$00
        .byte $12,$00,$00,$00,$00,$00,$00,$00
        .byte BORDER_COLOR,BACKGROUND_COLOR,$00,$00,$00,$00,$00,$00
        .byte $00,$00,$00,$00,$00,$00

cia1Table:  .byte $00,$00,$00,$00
cia2Table:  .byte $00,$00,$00,$00,$80

MemTestPattern:
        .byte $00,$55,$aa,$ff,$01,$02,$04,$08     // memtest pattern
        .byte $10,$20,$40,$80,$fe,$fd,$fb,$f7     //
        .byte $ef,$df,$bf,$7f                     //

colorRamPattern:
        .byte $00,$05,$0a,$0f,$01,$02,$04,$08
        .byte $0e,$0d,$0b,$07


.encoding "screencode_mixed"
strAbout:   .text "c-64 dead test rev stid"
strCount:   .text "count"
strZero:    .text "zero page"
strStack:   .text "stack page"
strRam:     .text "ram test"
srtColor:   .text "color ram"
strSound:   .text "sound test"
strScreen:  .text "screen ram"

sound1:  .byte $11,$15,$19,$22,$19,$15,$11         // soundtest
sound2:  .byte $25,$9a,$b1,$4b,$b1,$9a,$25         //
sound3:  .byte $22,$2b,$33,$44,$33,$2b,$22         //
sound4:  .byte $4b,$34,$61,$95,$61,$34,$4b         //
sound5:  .byte $44,$56,$66,$89,$66,$56,$44         //
sound6:  .byte $95,$69,$c2,$2b,$c2,$69,$95         //
sound7:  .byte $45,$11,$25                         //
sound8:  .byte $00,$00,$00                         //
sound9:  .byte $08,$00,$00,$09,$00,$28,$ff,$1f     //
         .byte $af                                 //


upBox:   .byte $20,$20,$20,$20,$20,$20,$20,$20     // box upper part
        .byte $20,$20,$20,$20,$20,$20,$22,$26
        .byte $26,$26,$26,$26,$26,$26,$26,$26
        .byte $26,$26,$26,$26,$26,$26,$26,$26
        .byte $26,$26,$26,$26,$26,$26,$26,$23

boxArea:   .byte $20,$20,$20,$20,$20,$20,$20,$20     // box text. 4164 etc.
        .byte $20,$20,$20,$20,$20,$20,$27,$20
        .byte $20,$20,$20,$20,$20,$20,$20,$20
        .byte $20,$20,$34,$31,$36,$34,$20,$20
        .byte $20,$20,$20,$20,$20,$20,$20,$27
        .byte $20,$20,$20,$20,$20,$20,$20,$20
        .byte $20,$20,$20,$20,$20,$20,$27,$20
        .byte $20,$20,$20,$20,$15,$39,$20,$20
        .byte $20,$20,$20,$20,$20,$20,$20,$15
        .byte $32,$31,$20,$20,$20,$20,$20,$27
        .byte $20,$20,$20,$20,$20,$20,$20,$20
        .byte $20,$20,$20,$20,$20,$20,$27,$20
        .byte $20,$20,$20,$20,$15,$31,$30,$20
        .byte $20,$20,$20,$20,$20,$20,$20,$15
        .byte $32,$32,$20,$20,$20,$20,$20,$27
        .byte $20,$20,$20,$20,$20,$20,$20,$20
        .byte $20,$20,$20,$20,$20,$20,$27,$20
        .byte $20,$20,$20,$20,$15,$31,$31,$20
        .byte $20,$20,$20,$20,$20,$20,$20,$15
        .byte $32,$33,$20,$20,$20,$20,$20,$27
        .byte $20,$20,$20,$20,$20,$20,$20,$20
        .byte $20,$20,$20,$20,$20,$20,$27,$20
        .byte $20,$20,$20,$20,$15,$31,$32,$20
        .byte $20,$20,$20,$20,$20,$20,$20,$15
        .byte $32,$34,$20,$20,$20,$20,$20,$27
        .byte $20,$20,$20,$20,$20,$20,$20,$20
        .byte $20,$20,$20,$20,$20,$20,$27,$20
        .byte $20,$20,$20,$20,$20,$20,$20,$20
        .byte $20,$20,$20,$20,$20,$20,$20,$20
        .byte $20,$20,$20,$20,$20,$20,$20,$27
        .byte $ff

boxColor:  .byte $06,$06,$06,$06,$06,$06,$06,$06     //color
        .byte $06,$06,$06,$06,$06,$06,BOX_BORDER_COLOR,$06
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,$06,BOX_BORDER_COLOR
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,BOX_BORDER_COLOR,$06
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,$06,BOX_BORDER_COLOR
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,BOX_BORDER_COLOR,$06
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,$06,BOX_BORDER_COLOR
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,BOX_BORDER_COLOR,$06
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,$06,BOX_BORDER_COLOR
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,BOX_BORDER_COLOR,$06
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,$06,BOX_BORDER_COLOR
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,BOX_BORDER_COLOR,$06
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,$06,$06
        .byte $06,$06,$06,$06,$06,$06,$06,BOX_BORDER_COLOR
        .byte $ff

lowBox:  .byte $20,$20,$20,$20,$20,$20,$20,$20     //box lower part
        .byte $20,$20,$20,$20,$20,$20,$24,$26
        .byte $26,$26,$26,$26,$26,$26,$26,$26
        .byte $26,$26,$26,$26,$26,$26,$26,$26
        .byte $26,$26,$26,$26,$26,$26,$26,$25

font:  .byte $00,$00,$00,$00,$00,$00,$00,$00     //font
        .byte $7e,$42,$42,$7e,$46,$46,$46,$00
        .byte $7e,$62,$62,$7e,$62,$62,$7e,$00
        .byte $7e,$42,$40,$40,$40,$42,$7e,$00
        .byte $7e,$42,$42,$62,$62,$62,$7e,$00
        .byte $7e,$60,$60,$78,$70,$70,$7e,$00
        .byte $7e,$60,$60,$78,$70,$70,$70,$00
        .byte $7e,$42,$40,$6e,$62,$62,$7e,$00
        .byte $42,$42,$42,$7e,$62,$62,$62,$00
        .byte $10,$10,$10,$18,$18,$18,$18,$00
        .byte $04,$04,$04,$06,$06,$66,$7e,$00
        .byte $42,$44,$48,$7e,$66,$66,$66,$00
        .byte $40,$40,$40,$60,$60,$60,$7e,$00
        .byte $43,$67,$5b,$43,$43,$43,$43,$00
        .byte $e2,$d2,$ca,$c6,$c2,$c2,$c2,$00
        .byte $7e,$42,$42,$46,$46,$46,$7e,$00
        .byte $7e,$42,$42,$7e,$60,$60,$60,$00
        .byte $7e,$42,$42,$62,$6a,$66,$7e,$00
        .byte $7e,$42,$42,$7e,$68,$64,$62,$00
        .byte $7e,$42,$40,$7e,$02,$62,$7e,$00
        .byte $7e,$18,$18,$18,$18,$18,$18,$00
        .byte $62,$62,$62,$62,$62,$62,$3c,$00
        .byte $62,$62,$62,$62,$62,$24,$18,$00
        .byte $c2,$c2,$c2,$c2,$da,$e6,$c2,$00
        .byte $62,$62,$24,$18,$24,$62,$62,$00
        .byte $62,$62,$62,$34,$18,$18,$18,$00
        .byte $7f,$03,$06,$08,$10,$60,$7f,$00
        .byte $3c,$30,$30,$30,$30,$30,$3c,$00
        .byte $0e,$10,$30,$fe,$30,$60,$ff,$00
        .byte $3c,$0c,$0c,$0c,$0c,$0c,$3c,$00
        .byte $00,$18,$3c,$7e,$18,$18,$18,$18
        .byte $00,$10,$30,$7f,$7f,$30,$10,$00
        .byte $00,$00,$00,$00,$00,$00,$00,$00
        .byte $0e,$0e,$60,$60,$60,$60,$0e,$0e
        .byte $00,$00,$00,$07,$0f,$1c,$18,$18
        .byte $00,$00,$00,$e0,$f0,$38,$18,$18
        .byte $18,$18,$1c,$0f,$07,$00,$00,$00
        .byte $18,$18,$38,$f0,$e0,$00,$00,$00
        .byte $00,$00,$00,$ff,$ff,$00,$00,$00
        .byte $18,$18,$18,$18,$18,$18,$18,$18
        .byte $0c,$18,$30,$30,$30,$18,$0c,$00
        .byte $30,$18,$0c,$0c,$0c,$18,$30,$00
        .byte $00,$66,$3c,$ff,$3c,$66,$00,$00
        .byte $00,$18,$18,$7e,$18,$18,$00,$00
        .byte $00,$00,$00,$00,$00,$18,$18,$30
        .byte $00,$00,$00,$7e,$00,$00,$00,$00
        .byte $00,$00,$00,$00,$00,$18,$18,$00
        .byte $00,$03,$06,$0c,$18,$30,$60,$00
        .byte $7e,$42,$42,$42,$42,$42,$7e,$00
        .byte $30,$30,$10,$10,$3c,$3c,$3c,$00
        .byte $7e,$02,$02,$7e,$40,$40,$7e,$00
        .byte $7e,$02,$02,$7e,$06,$06,$7e,$00
        .byte $60,$60,$60,$66,$7e,$06,$06,$00
        .byte $7e,$40,$40,$7e,$02,$02,$7e,$00
        .byte $78,$48,$40,$7e,$42,$42,$7e,$00
        .byte $7e,$42,$04,$08,$08,$08,$08,$00
        .byte $3c,$24,$24,$3c,$66,$66,$7e,$00
        .byte $7e,$42,$42,$7e,$06,$06,$06,$00