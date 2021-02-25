Class INLP.Data.NewsCategories Extends %Persistent
{

Property Categoria As %String(MAXLEN = "");

Storage Default
{
<Data name="NewsCategoriesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Categoria</Value>
</Value>
</Data>
<DataLocation>^INLP.Data.NewsCategoriesD</DataLocation>
<DefaultData>NewsCategoriesDefaultData</DefaultData>
<IdLocation>^INLP.Data.NewsCategoriesD</IdLocation>
<IndexLocation>^INLP.Data.NewsCategoriesI</IndexLocation>
<StreamLocation>^INLP.Data.NewsCategoriesS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
