<!---
layout: none
permalink: /sitemap.xml
excludeFromCollections: true
--->
<cfscript>
	function getPages(collections){
		return collections.all.filter((item) => {
			return item.excludeFromCollections == false && (item.type == "page" || item.type == "post");
		});
	}
savecontent variable="xml" {
writeOutput('<?xml version="1.0" encoding="UTF-8"?>#chr(10)#');
writeoutput('<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">#chr(10)#');
for(var p in getPages(collections)){
writeoutput('
<url>
	<loc>http://www.example.com/foo.html</loc>
	<lastmod>2018-06-04</lastmod>
</url>
');
}
writeoutput('</urlset>#chr(10)#');
}
</cfscript>
<cfoutput>#xml#</cfoutput>