'*******************************************************************************************'
'                                                                                           '
' Download Free Evaluation Version From:     https://bytescout.com/download/web-installer   '
'                                                                                           '
' Also available as Web API! Get free API Key https://app.pdf.co/signup                     '
'                                                                                           '
' Copyright © 2017-2019 ByteScout, Inc. All rights reserved.                                '
' https://www.bytescout.com                                                                 '
' https://www.pdf.co                                                                        '
'*******************************************************************************************'


' This example demonstrates how to use the graphics clipping.

' Create Bytescout.PDF.Document object
Set pdfDocument = CreateObject("Bytescout.PDF.Document")
pdfDocument.RegistrationName = "demo"
pdfDocument.RegistrationKey = "demo"

Set comHelpers = pdfDocument.ComHelpers

' Add page
Set page1 = comHelpers.CreatePage(comHelpers.PAPERFORMAT_A4)
pdfDocument.Pages.Add(page1)

centerX = 200
centerY = 200

' Create clipping path from circle
Set clippingPath = comHelpers.CreatePath()
clippingPath.AddCircle centerX, centerY, 100
page1.Canvas.SetClip(clippingPath)

' Paint Bytescout.PDF.Rectangle over the clipping circle.
' Only part of the Bytescout.PDF.Rectangle intersecting the clipping circle will be drawn.
Set redBrush = comHelpers.CreateSolidBrush(comHelpers.CreateColorRGB(255, 0, 0))
page1.Canvas.DrawRectangle_2 (redBrush), centerX - 50, centerY - 50, 200, 200

' Save document to file
pdfDocument.Save("result.pdf")

' Open document in default PDF viewer app
Set shell = CreateObject("WScript.Shell")
shell.Run "result.pdf", 1, false
