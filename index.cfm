<!---
layout: main
something: else
weird:
- an
- array
- of
- stuff
--->
<cfoutput>
<div class="container" style="min-height: 100vh;">
	<cfloop array="#prc.posts#" index="i">
		<a href="/posts/#i.slug#">#i.title#</a><br />
	</cfloop>
</div>
<!--- <cfdump var="#prc#" /> --->
</cfoutput>