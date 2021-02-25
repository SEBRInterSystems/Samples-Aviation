Class INLP.NewsClassifier Extends %iKnow.Classification.Classifier [ ProcedureBlock ]
{

XData Classifier [ XMLNamespace = "http://www.intersystems.com/iknow/classification" ]
{
<Classifier description="The categories for this classifier are based on the different values for the metadata property &apos;Categoria&apos;" builderClass="%iKnow.Classification.IKnowBuilder">
<Categories>
<Category name="GERAIS" recordCount="8" spec="%iKnow.Filters.SimpleMetadataFilter|1|&quot;Categoria&quot;|&quot;=&quot;|&quot;GERAIS&quot;" />
<Category name="POLÍTICA" recordCount="9" spec="%iKnow.Filters.SimpleMetadataFilter|1|&quot;Categoria&quot;|&quot;=&quot;|&quot;POLÍTICA&quot;" />
</Categories>
<TermDictionary termSelectionMethod="BM25">
<Terms>
<Entity negation="undefined" count="exactCount">
<Value>militares</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>trump</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>alemania</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>children</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>coronavirus</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>residents</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>leopoldina</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>vacina</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>country</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>biden</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>uso</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>novichok</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>bogotá</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>túnel</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>descendants</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>campaña</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>job</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>tempo</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>extrema derecha</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>brasil</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>americanos</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>people</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>norte</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>tribes</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>qanon</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>pandemia</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>explosion</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>rusia</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>imperatriz</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>family</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>beirut</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>ms. el-sayed</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>volunteers</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>seguidores</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>2018</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>colômbia</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>especialistas</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>covid-19</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>skripal</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>toxina</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>universidad</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>obra</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>construção</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>princesa</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>monday</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>government</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>vírus</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>internet</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>reportagem</Value>
</Entity>
<Entity negation="undefined" count="exactCount">
<Value>conspiración</Value>
</Entity>
</Terms>
</TermDictionary>
<ClassificationMethod method="naiveBayes" localTermWeights="linear" normalization="none">
<CategoryTermWeights kind="any">
<Array>0 0 .4166666666666666666 .5882352941176470588 0 1 1 0 .4166666666666666666 0 .4166666666666666666 1 1 1 1 0 1 .4166666666666666666 0 .5882352941176470588 0 .6818181818181818182 .4166666666666666666 1 0 .1923076923076923076 1 .4166666666666666666 1 1 1 0 1 0 .5882352941176470588 1 .4166666666666666666 0 1 1 1 1 1 1 1 1 0 1 0 0</Array>
<Array>1 1 .5833333333333333334 .4117647058823529412 1 0 0 1 .5833333333333333334 1 .5833333333333333334 0 0 0 0 1 0 .5833333333333333334 1 .4117647058823529412 1 .3181818181818181818 .5833333333333333334 0 1 .8076923076923076924 0 .5833333333333333334 0 0 0 0 0 1 .4117647058823529412 0 .5833333333333333334 1 0 0 0 0 0 0 0 0 1 0 1 1</Array>
<Array>0 0 .4166666666666666666 .5882352941176470588 0 1 1 0 .4166666666666666666 0 .4166666666666666666 1 1 1 1 0 1 .4166666666666666666 0 .5882352941176470588 0 .6818181818181818182 .4166666666666666666 1 0 .1923076923076923076 1 .4166666666666666666 1 1 1 0 1 0 .5882352941176470588 1 .4166666666666666666 0 1 1 1 1 1 1 1 1 0 1 0 0</Array>
<Array>1 1 .5833333333333333334 .4117647058823529412 1 0 0 1 .5833333333333333334 1 .5833333333333333334 0 0 0 0 1 0 .5833333333333333334 1 .4117647058823529412 1 .3181818181818181818 .5833333333333333334 0 1 .8076923076923076924 0 .5833333333333333334 0 0 0 0 0 1 .4117647058823529412 0 .5833333333333333334 1 0 0 0 0 0 0 0 0 1 0 1 1</Array>
<Array>0 0 .4166666666666666666 .5882352941176470588 0 1 1 0 .4166666666666666666 0 .4166666666666666666 1 1 1 1 0 1 .4166666666666666666 0 .5882352941176470588 0 .6818181818181818182 .4166666666666666666 1 0 .1923076923076923076 1 .4166666666666666666 1 1 1 0 1 0 .5882352941176470588 1 .4166666666666666666 0 1 1 1 1 1 1 1 1 0 1 0 0</Array>
<Array>1 1 .5833333333333333334 .4117647058823529412 1 0 0 1 .5833333333333333334 1 .5833333333333333334 0 0 0 0 1 0 .5833333333333333334 1 .4117647058823529412 1 .3181818181818181818 .5833333333333333334 0 1 .8076923076923076924 0 .5833333333333333334 0 0 0 0 0 1 .4117647058823529412 0 .5833333333333333334 1 0 0 0 0 0 0 0 0 1 0 1 1</Array>
</CategoryTermWeights>
<CategoryWeights>.5833333333333333333 .4166666666666666667 .5833333333333333333 .4166666666666666667 .5833333333333333333 .4166666666666666667</CategoryWeights>
</ClassificationMethod>
<BuilderParameter name="DomainId" value="1" />
<BuilderParameter name="TrainingSet" value="%iKnow.Filters.SourceIdFilter|1|1,2,4,5,7,8,10,11,13,14,16,17" />
<BuilderParameter name="MetadataField" value="Categoria" />
</Classifier>
}

}
