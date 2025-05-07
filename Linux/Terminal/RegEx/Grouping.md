||**Operators**|**Description**|
|---|---|---|
|1|`(a)`|The round brackets are used to group parts of a regex. Within the brackets, you can define further patterns which should be processed together.|
|2|`[a-z]`|The square brackets are used to define character classes. Inside the brackets, you can specify a list of characters to search for.|
|3|`{1,10}`|The curly brackets are used to define quantifiers. Inside the brackets, you can specify a number or a range that indicates how often a previous pattern should be repeated.|
|4|`\|`|Also called the OR operator and shows results when one of the two expressions matches|
|5|`.*`|Operates similarly to an AND operator by displaying results only when both expressions are present and match in the specified order|


Among other things, regex offers us the possibility to group the desired search patterns. Basically, regex follows three different concepts, which are distinguished by the three different brackets