Class INLP.Domain.NewsDom Extends %iKnow.DomainDefinition [ ProcedureBlock ]
{

XData Domain [ XMLNamespace = "http://www.intersystems.com/iknow" ]
{
<domain name="NewsDom" disabled="false" allowCustomUpdates="false">
<parameter name="DefaultConfig" value="NewsDom.Configuration" isList="false" />
<data dropBeforeBuild="true">
<query listname="NewsQuery" batchMode="true" disabled="false" listerClass="%iKnow.Source.SQL.Lister" sql="SELECT  CF.ID, CF.FileName, CF.Idioma, CF.Media, CF.Data, CF.Noticia, CF.Escritor,CF.CategoriaNoticia FROM INLP_Data.ContentFile CF" idField="ID" groupField="ID" dataFields="Noticia" metadataColumns="CategoriaNoticia,Noticia,Idioma,Escritor,Data,FileName" metadataFields="Categoria,Noticia,Idioma,Escritor,Data,Filename">
<parameter value="SELECT  CF.ID, CF.FileName, CF.Idioma, CF.Media, CF.Data, CF.Noticia, CF.Escritor,CF.CategoriaNoticia FROM INLP_Data.ContentFile CF" isList="false" />
<parameter value="ID" isList="false" />
<parameter value="ID" isList="false" />
<parameter value="Noticia" isList="true" />
<parameter value="CategoriaNoticia,Noticia,Idioma,Escritor,Data,FileName" isList="true" />
<parameter value="Categoria,Noticia,Idioma,Escritor,Data,Filename" isList="true" />
</query>
</data>
<matching disabled="false" dropBeforeBuild="true" autoExecute="true" ignoreDictionaryErrors="true">
<dictionary name="Dictionary_1" language="pt" disabled="false">
<item name="presidencial" uri="uri:presidencial" language="es" disabled="false">
<term string="gobierno" language="es" disabled="false" />
<term string="presidente" language="es" disabled="false" />
</item>
</dictionary>
</matching>
<metadata>
<field name="CategoriaNoticia" operators="=,!=" dataType="STRING" storage="0" caseSensitive="false" disabled="false" />
<field name="Categoria" operators="=,!=" dataType="STRING" storage="0" caseSensitive="false" disabled="false" />
<field name="Noticia" operators=" =, !=" dataType="STRING" storage="0" caseSensitive="false" disabled="false" />
<field name="Idioma" operators=" =, !=" dataType="STRING" storage="0" caseSensitive="false" disabled="false" />
<field name="Escritor" operators=" =, !=" dataType="STRING" storage="0" caseSensitive="false" disabled="false" />
<field name="Data" operators=" =, !=, &lt;, &lt;=, &gt;, &gt;=" dataType="DATE" storage="0" caseSensitive="false" disabled="false" />
<field name="Filename" operators=" =, !=" dataType="STRING" storage="0" caseSensitive="false" disabled="false" />
</metadata>
<configuration name="NewsDom.Configuration" detectLanguage="true" languages="en,es,pt" userDictionary="NewsDom.Dictionary#1" summarize="true" maxConceptLength="0" />
<userDictionary name="NewsDom.Dictionary#1">
<entry rewriteFrom="convincente" assignLabel="UDPosSentiment" />
<entry rewriteFrom="Procuradoria-Geral" rewriteTo="PGR" />
</userDictionary>
<blacklist name="LN1">
<entry>Leopoldina</entry>
</blacklist>
</domain>
}

}
