Class INLP.Utils Extends (%RegisteredObject, %XML.Adaptor)
{

/// Do ##class(INLP.Utils).LoadData("C:\Users\abraga\Documents\InterSystems\iKnow\NYT\")
ClassMethod LoadData(pPath As %String)
{
	#Dim tRS As %ResultSet
	#Dim tFileStream As %FileCharacterStream
	#Dim tContentFile As INLP.Data.ContentFile

	Set tRS = ##class(%ResultSet).%New("%File:FileSet") 
	Set tSC = tRS.Execute(pPath,"*",,1) 
	While (tRS.Next()) 
	{ 
		Set tWorkFilename = tRS.Get("Name")
		Set tFileName = ##class(%File).GetFilename(tWorkFilename)
		Write " >>> ",tWorkFilename," <<< ",!
		Write " >>> ",tFileName," <<< ",!
	
		If '##class(INLP.Data.ContentFile).IndexFileNameExists(tFileName)
		{
			Set tContentFile = ##class(INLP.Data.ContentFile).%New()
			
			Set tContentFile.Data			= $ZDH($Piece(tFileName,"_",1),6)
			Set tContentFile.Idioma			= $Piece(tFileName,"_",2)
			Set tContentFile.Escritor			= $Piece(tFileName,"_",3)
			Set tContentFile.FileName			= tFileName
						
			Set tFileStream = ##class(%FileCharacterStream).%New()	
			Do tFileStream.TranslateTableSet("UTF8")
			Set tFileStream.BOM=$C(239,187,191)	
			Set tSC = tFileStream.LinkToFile(tWorkFilename)
			Set tFileStream.Attributes("Filename") = tWorkFilename
			
			While 'tFileStream.AtEnd
			{
				Set tLine = tFileStream.ReadLine()
				
				For i=1:1:31
				{
					If ((i=13) || (i=10)) { Continue }
					Set tLine = $TR(tLine,$Char(i),"")
				}
				Set tSep = $Select(tContentFile.Noticia ="":"",1:$Char(13,10))				 
				Set tContentFile.Noticia= tContentFile.Noticia_tSep_tLine
			}	
			If (tContentFile.Noticia [ "Trump") || (tContentFile.Noticia [ "Bolsonaro") 
			{
			 Set tContentFile.CategoriaNoticia = "Política"	
			}
			Else
			{
			 Set tContentFile.CategoriaNoticia = "Gerais"	
			}
			Set tSC = tContentFile.%Save()			
			If $$$ISERR(tSC)
			{ 
				Write $System.Status.DisplayError(tSC)
			}
			Else
			{
				Write "Arquivo importado",!
			}
		}
	}
}

ClassMethod Convert(pPath As %String(MAXLEN=100,TRUNCATE=1)) As %Status
{
	Set tRS = ##class(%ResultSet).%New("%File:FileSet") 
	//Do tRS.Execute(pPath,"*.txt",,1) 
	Do tRS.Execute(pPath,"*",,1) 
	While (tRS.Next()) 
	{ 
		Set tWorkFilename = tRS.Get("Name")
		Set tWorkFilenameNew = tWorkFilename_".txt"
		
		Set pFilein 	= ##class(%FileCharacterStream).%New()
		Set pFileou 	= ##class(%FileCharacterStream).%New()
		
		Do pFileou.TranslateTableSet("UTF8")
		Set pFileou.BOM=$C(239,187,191)
		Do pFileou.LinkToFile(tWorkFilenameNew)
		
		Do pFilein.LinkToFile(tWorkFilename)
		Do pFilein.Rewind()
		
		While '(pFilein.AtEnd)
		{
			//Do pStream.WriteLine(..TranslateLine(pFile.ReadLine()))
			Do pFileou.WriteLine(pFilein.ReadLine())
		}
		#;
		Set tSC = pFileou.%Save()
		Do pFileou.%Close()
	}
	If $System.Status.IsError(tSC) Quit tSC
	#;
	Quit $System.Status.OK()
}

ClassMethod DeleteFile(pPath As %String(MAXLEN=100,TRUNCATE=1)) As %Status
{
	Set tRS = ##class(%ResultSet).%New("%File:FileSet") 
	
	Do tRS.Execute(pPath,"*.txt",,1) 
	While (tRS.Next()) 
	{ 
		Set tWorkFilename = tRS.Get("Name")
		Write tWorkFilename
		If tWorkFilename [ ".txt_new"
		{	
			Write "   deletado"
			Set tSC = ##class(%File).Delete(tWorkFilename)
			Write $System.Status.DisplayError(tSC)
			
		}
		W !
	}
	#;
	Quit $System.Status.OK()
}

}
