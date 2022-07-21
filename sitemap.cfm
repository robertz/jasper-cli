<!---
layout: none
permalink: /sitemap.xml
excludeFromCollections: true
--->
<cfscript>
	function getPages(collections){
		var ret = collections.all.filter((item) => {
			return item.excludeFromCollections == false && (item.type == "page" || item.type == "post");
		});
		ret.sort( ( e1, e2 ) => {
			return compare( e1.permalink, e2.permalink );
		} );
		return ret;
	}
	lastMod = dateFormat(now(), "yyyy-mm-dd");
savecontent variable="xml" {
writeOutput('<?xml version="1.0" encoding="UTF-8"?>#chr(10)#');
writeoutput('<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">#chr(10)#');
for(var p in getPages(collections)){
writeoutput('
<url>
	<loc>#prc.meta.url##p.permalink#</loc>
	<lastmod>#lastMod#</lastmod>
</url>
');
}
writeoutput('</urlset>#chr(10)#');
}
</cfscript>
<cfoutput>#xml#</cfoutput>