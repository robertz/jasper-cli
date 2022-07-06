<cfoutput>
<div class="row lazy">
	<div class="col-lg-2 d-none d-lg-block d-xl-block"></div>
	<div class="col-lg-8 col-md-12 post">
		<div class="row">
			<div class="col-lg-8 col-md-12">
				<div class="mb-3">
					<div>
						<cfloop array="#prc.tags#" item="tag">
							<span class="badge badge-secondary">#tag#</span>
						</cfloop>
					</div>
					<p class="h2">#prc.title#</p>
					<div class="mb-2">
						<strong>#prc.author#</strong><br />
						<span class="text-muted small">#dateFormat(prc.publishDate, "mmm dd, yyyy")#</span>
					</div>
					<p class="small">#prc.description#</p>
				</div>
				<div class="mb-5">
					#prc.content#
				</div>
			</div>
			<div class="col-lg-4 d-none d-lg-block d-xl-block">
				<cfinclude template="sidebar.cfm" />
			</div>
		</div>
	</div>
	<div class="col-lg-2 d-none d-lg-block d-xl-block"></div>
</div>
</cfoutput>