Module Module1

    Sub Main()
        Dim f As IO.StreamReader = New IO.StreamReader("D:\nums.txt")
        Dim d() As String = f.ReadLine().Split()

        Dim max, min As Integer
        max = Int(d(0))
        min = Int(d(0))
        For i = 1 To d.Length - 1
            If Int(d(i)) > max Then
                max = d(i)
            End If

            If CInt(d(i)) < min Then
                min = d(i)
            End If
        Next

        Console.WriteLine(max & " " & min)

        Console.ReadLine()
    End Sub

End Module