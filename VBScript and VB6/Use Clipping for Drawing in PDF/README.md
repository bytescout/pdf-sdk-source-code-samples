## How to use clipping for drawing in PDF in VBScript and VB6 with ByteScout PDF SDK

### Write code in VBScript and VB6 to use clipping for drawing in PDF with this step-by-step tutorial

Use clipping for drawing in PDF is easy to implement in VBScript and VB6 if you use these source codes below. ByteScout PDF SDK can use clipping for drawing in PDF. It can be used from VBScript and VB6. ByteScout PDF SDK is the pdf library that can create, update and modify PDF files. Supports text with fonts and style selections, layers, form fields, drawing lines and objects, automatic tables, images. Can be used to create and fill pdf forms.

The SDK samples like this one below explain how to quickly make your application do use clipping for drawing in PDF in VBScript and VB6 with the help of ByteScout PDF SDK. In your VBScript and VB6 project or application you may simply copy & paste the code and then run your app! Enjoy writing a code with ready-to-use sample codes in VBScript and VB6.

ByteScout free trial version is available for download from our website. It includes all these programming tutorials along with source code samples.

## REQUEST FREE TECH SUPPORT

[Click here to get in touch](https://bytescout.zendesk.com/hc/en-us/requests/new?subject=ByteScout%20PDF%20SDK%20Question)

or just send email to [support@bytescout.com](mailto:support@bytescout.com?subject=ByteScout%20PDF%20SDK%20Question) 

## ON-PREMISE OFFLINE SDK 

[Get Your 60 Day Free Trial](https://bytescout.com/download/web-installer?utm_source=github-readme)
[Explore SDK Docs](https://bytescout.com/documentation/index.html?utm_source=github-readme)
[Sign Up For Online Training](https://academy.bytescout.com/)


## ON-DEMAND REST WEB API

[Get your API key](https://pdf.co/documentation/api?utm_source=github-readme)
[Explore Web API Documentation](https://pdf.co/documentation/api?utm_source=github-readme)
[Explore Web API Samples](https://github.com/bytescout/ByteScout-SDK-SourceCode/tree/master/PDF.co%20Web%20API)

## VIDEO REVIEW

[https://www.youtube.com/watch?v=gdsQ0EAqwGQ](https://www.youtube.com/watch?v=gdsQ0EAqwGQ)




<!-- code block begin -->

##### ****Clipping.vbs:**
    
```
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

```

<!-- code block end -->