Class INLP.Data.ContentFile Extends (%Persistent, %XML.Adaptor)
{

Property Data As %Date;

Property Escritor As %String(MAXLEN = "");

Property Idioma As %String(MAXLEN = 3);

Property Media As %String(MAXLEN = "");

Property Noticia As %String(MAXLEN = "");

Property FileName As %String(MAXLEN = 100);

Property CategoriaNoticia As %String(MAXLEN = "");

Index IndexFileName On FileName [ Unique ];

// Índice Semantico (Language = "*" = Autodetect )

Index NoticiaSemanticIdx On (Noticia) As %iFind.Index.Semantic(LANGUAGE = "*");

Storage Default
{
<Data name="ContentFileDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Data</Value>
</Value>
<Value name="3">
<Value>Escritor</Value>
</Value>
<Value name="4">
<Value>Idioma</Value>
</Value>
<Value name="5">
<Value>Media</Value>
</Value>
<Value name="6">
<Value>Noticia</Value>
</Value>
<Value name="7">
<Value>FileName</Value>
</Value>
<Value name="8">
<Value>CategoriaNoticia</Value>
</Value>
</Data>
<DataLocation>^INLP.Data.ContentFileD</DataLocation>
<DefaultData>ContentFileDefaultData</DefaultData>
<IdLocation>^INLP.Data.ContentFileD</IdLocation>
<IndexLocation>^INLP.Data.ContentFileI</IndexLocation>
<StreamLocation>^INLP.Data.ContentFileS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
