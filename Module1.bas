Public Function Gen1234Barcode(Txt As String) As String
    On Error GoTo ErrLne
    Arr1 = Array(" ", "!", Chr(34), "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", _
    "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", _
    "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", _
    "\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", _
    "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "{", "|", "}", "~")
    
    Arr2 = Array("212222", "222122", "222221", "121223", "121322", "131222", "122213", "122312", "132212", "221213", _
    "221312", "231212", "112232", "122132", "122231", "113222", "123122", "123221", "223211", "221132", _
    "221231", "213212", "223112", "312131", "311222", "321122", "321221", "312212", "322112", "322211", _
    "212123", "212321", "232121", "111323", "131123", "131321", "112313", "132113", "132311", "211313", _
    "231113", "231311", "112133", "112331", "132131", "113123", "113321", "133121", "313121", "211331", _
    "231131", "213113", "213311", "213131", "311123", "311321", "331121", "312113", "312311", "332111", _
    "314111", "221411", "431111", "111224", "111422", "121124", "121421", "141122", "141221", "112214", _
    "112412", "122114", "122411", "142112", "142211", "241211", "221114", "413111", "241112", "134111", _
    "111242", "121142", "121241", "114212", "124112", "124211", "411212", "421112", "421211", "212141", _
    "214121", "412121", "111143", "111341", "131141")
    
    Ret1 = "": ChkSum = 0
    For i = 1 To Len(Txt)
        T1 = MID(Txt, i, 1)
        For j = 0 To UBound(Arr1)
            If Arr1(j) = T1 Then
                Ret1 = Ret1 & Arr2(j)
                ChkSum = ChkSum + j * i
                Exit For
            End If
        Next j
    Next i
    ChkSum = ChkSum + 104
    Do While ChkSum > 103
        ChkSum = ChkSum - 103
    Loop
    
    Ret1 = Ret1 & Arr2(ChkSum)
    
    
    Ret1 = "211214" & Ret1 & "2331112"
    Gen1234Barcode = Ret1

    Exit Function

ErrLne:
    ChkErr = Err.Number
    MsgBox "Error " & Err.Number & " : " & Err.Description, vbInformation
    Resume Next

End Function

