Tmp1 = Gen1234Barcode(Sn)

cx = 1000: cy = 1500: W1 = 10
For I1 = 1 To Len(Tmp1)
    i2 = Mid(Tmp1, I1, 1)
    i3 = i2 * W1
    Printer.Line (cx, cy + 500)-(cx + i3, cy + 1500), IIf(I1 Mod 2 = 0, vbWhite, vbBlack), BF
    cx = cx + i3
Next I1

