Imports System.Collections.Generic
Imports System.IO
Imports System.Configuration
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.Document
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.Pages
Imports Aspose.Pdf.Cloud.Examples.VisualBasic.Document_Properties

Module RunExamples

    Sub Main()
        Console.WriteLine("Open RunExamples.vb. " & vbLf & "In Main() method uncomment the example that you want to run.")
        Console.WriteLine("=====================================================")

        ' Uncomment the one you want to try out

        '''' =====================================================
        '''' =====================================================
        '''' Document
        '''' =====================================================
        '''' =====================================================

        'CreateEmptyPdf.Run()
        'CreateFromHTML.Run()
        'CreateFromXML.Run()
        'ConvertPdfFromImages.Run()
        'ConvertPdfToOtherFormat.Run()
        'MergePdfFiles.Run()
        'SplitPdfFiles.Run()
        'SignPdfDoc.Run()
        'AppendPdfFiles.Run()
        'CreatePdfFromJPEG.Run()
        'CreatePdfFromSVG.Run()
        'CreatePdfFromTIFF.Run()

        '''' =====================================================
        '''' =====================================================
        '''' Pages
        '''' =====================================================
        '''' =====================================================

        'AddNewPage.Run()
        'DeletePage.Run()
        'MovePages.Run()
        'GetPageCount.Run()
        'ConvertToImageWithDefaultSize.Run()
        'ConvertToImageWithSpecifiedSize.Run()

        '''' =====================================================
        '''' =====================================================
        '''' Document-Properties
        '''' =====================================================
        '''' =====================================================

        'SetSingleDocumentProperty.Run();
        'GetAllProperties.Run();
        'RemoveAllProperties.Run();  
        GetParticularProperty.Run()

        ' Stop before exiting
        Console.WriteLine(vbLf & vbLf & "Program Finished. Press any key to exit....")
        Console.ReadKey()

    End Sub

End Module

