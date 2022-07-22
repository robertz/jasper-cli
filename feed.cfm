<!---
layout: none
permalink: /feed.rss
excludeFromCollections: true
--->
<cfscript>
	function getPages(collections){
		var ret = collections.all.filter((item) => {
			return item.excludeFromCollections == false && (item.type == "post");
		});
		ret.sort( ( e1, e2 ) => {
			return compare( e1.permalink, e2.permalink );
		} );
		return ret;
	}
savecontent variable="xml" {
writeOutput('<?xml version="1.0" encoding="UTF-8"?>#chr(10)#');
writeoutput('<rss version="2.0"><channel>#chr(10)#<title>Title</title>#chr(10)#<link>Link</link>#chr(10)#<description>description</description>#chr(10)#');
for(var p in getPages(collections)){
writeoutput('
<item>
	<title>#p.title#</title>
	<link>#p.meta.url##p.permalink#</link>
	<description>#p.description#</description>
	<author>#p.author#</author>
	<pubDate>#dateFormat(p.publishDate, "yyyy-mm-dd")#</pubDate>
</item>
');
}
writeoutput('</channel></rss>#chr(10)#');
}
</cfscript>
<cfoutput>#xml#</cfoutput>