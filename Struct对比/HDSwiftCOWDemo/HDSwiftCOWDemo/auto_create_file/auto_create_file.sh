fileCount=200
for (( i = 0; i < $fileCount; i++ )); do
	className="HDClassObj_${i}"
	classFile="${className}.swift"
	structName="HDStructObj_${i}"
	structFile="${structName}.swift"
	classDecodableName="HDClassDecodableObj_${i}"
	classDecodableFile="${classDecodableName}.swift"
	structDecodableName="HDStructDecodableObj_${i}"
	structDecodableFile="${structDecodableName}.swift"
	echo "class ${className} {" > $classFile
	echo "struct ${structName} {" > $structFile
	echo "class ${classDecodableName}: Decodable {" > $classDecodableFile
	echo "struct ${structDecodableName}: Decodable {" > $structDecodableFile
	for (( j = 0; j < $i; j++ )); do
		line="\tvar name_${j}: String?"
		echo $line >> $classFile
		echo $line >> $structFile
		echo $line >> $classDecodableFile
		echo $line >> $structDecodableFile
	done
	echo "}" >> $classFile
	echo "}" >> $structFile
	echo "}" >> $classDecodableFile
	echo "}" >> $structDecodableFile
done