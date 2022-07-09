<!---
layout: main
--->
<cfoutput>
<div class="container" style="min-height: 100vh;">
	<cfloop array="#prc.posts#" index="i">
		<a href="/posts/#i.slug#">#i.title#</a><br />
	</cfloop>
	<!--- <cfdump var="#prc#" /> --->
</div>
</cfoutput>
