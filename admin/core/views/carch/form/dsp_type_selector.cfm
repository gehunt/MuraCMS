<cfoutput>
	<cfif listFindNoCase(pageLevelList,rc.type)>
		<div class="control-group">
			<label class="control-label">
				#application.rbFactory.getKeyValue(session.rb,"sitemanager.content.type")#
			</label>
			<div class="controls">
				<select name="typeSelector"  onchange="siteManager.resetExtendedAttributes('#rc.contentBean.getcontentHistID()#',this.value,'#rc.siteID#','#application.configBean.getContext()#','#application.settingsManager.getSite(rc.siteID).getThemeAssetPath()#');">
				<cfloop list="#baseTypeList#" index="t">
				<cfsilent>
						<cfquery name="rsst" dbtype="query">select * from rsSubTypes where type=<cfqueryparam cfsqltype="cf_sql_varchar"  value="#t#"> and subtype not in ('Default','default')</cfquery>
				</cfsilent>
				<option value="#t#^Default" <cfif rc.type eq t and rc.contentBean.getSubType() eq "Default">selected</cfif>>#application.rbFactory.getKeyValue(session.rb,"sitemanager.content.type.#lcase(t)#")#</option>
					<cfif rsst.recordcount>
						<cfloop query="rsst">
							<option value="#t#^#rsst.subtype#" <cfif rc.type eq t and rc.contentBean.getSubType() eq rsst.subtype>selected</cfif>>#application.rbFactory.getKeyValue(session.rb,"sitemanager.content.type.#lcase(t)#")#  / #rsst.subtype#</option>
						</cfloop>
					</cfif>
				</cfloop>
			</select>
			</div>
		</div>
	<cfelseif rc.type eq 'File'>
		<cfset t="File"/>
		<cfsilent>
			<cfquery name="rsst" dbtype="query">select * from rsSubTypes where type=<cfqueryparam cfsqltype="cf_sql_varchar"  value="#t#"> and subtype not in ('Default','default')</cfquery>
		</cfsilent>
		<cfif rsst.recordcount>
			<div class="control-group">
				<label class="control-label">
					#application.rbFactory.getKeyValue(session.rb,"sitemanager.content.type")#
				</label>
				<div class="controls">
					<select name="typeSelector"  onchange="siteManager.resetExtendedAttributes('#rc.contentBean.getcontentHistID()#',this.value,'#rc.siteID#','#application.configBean.getContext()#','#application.settingsManager.getSite(rc.siteID).getThemeAssetPath()#');">
						<option value="#t#^Default" <cfif rc.type eq t and rc.contentBean.getSubType() eq "Default">selected</cfif>>#application.rbFactory.getKeyValue(session.rb,"sitemanager.content.type.#t#")#</option>
						<cfif rsst.recordcount>
							<cfloop query="rsst">
								<option value="#t#^#rsst.subtype#" <cfif rc.type eq t and rc.contentBean.getSubType() eq rsst.subtype>selected</cfif>>#application.rbFactory.getKeyValue(session.rb,"sitemanager.content.type.#lcase(t)#")# / #rsst.subtype#</option>
							</cfloop>
						</cfif>
				</select>
				</div>
			</div>	
		</cfif>
	<cfelseif rc.type eq 'Link'>	
		<cfset t="Link"/>
		<cfsilent>
			<cfquery name="rsst" dbtype="query">select * from rsSubTypes where type=<cfqueryparam cfsqltype="cf_sql_varchar"  value="#t#"> and subtype not in ('Default','default')</cfquery>
		</cfsilent>
		<cfif rsst.recordcount>
			<div class="control-group">
				<label class="control-label">#application.rbFactory.getKeyValue(session.rb,"sitemanager.content.type")#</label>
				<div class="controls">
					<select name="typeSelector"  onchange="siteManager.resetExtendedAttributes('#rc.contentBean.getcontentHistID()#',this.value,'#rc.siteID#','#application.configBean.getContext()#','#application.settingsManager.getSite(rc.siteID).getThemeAssetPath()#');">
					<option value="#t#^Default" <cfif rc.type eq t and rc.contentBean.getSubType() eq "Default">selected</cfif>>#application.rbFactory.getKeyValue(session.rb,"sitemanager.content.type.#lcase(t)#")#</option>
					<cfif rsst.recordcount>
						<cfloop query="rsst">
							<cfif rsst.subtype neq 'Default'><option value="#t#^#rsst.subtype#" <cfif rc.type eq t and rc.contentBean.getSubType() eq rsst.subtype>selected</cfif>>#application.rbFactory.getKeyValue(session.rb,"sitemanager.content.type.#lcase(t)#")#  / #rsst.subtype#</option></cfif>
						</cfloop>
					</cfif>
				</select>
				</div>
			</div>
		</cfif>
	<cfelseif rc.type eq 'Component'>	
		<cfset t="Component"/>
			<cfsilent><cfquery name="rsst" dbtype="query">select * from rsSubTypes where type=<cfqueryparam cfsqltype="cf_sql_varchar"  value="#t#"> and subtype not in ('Default','default')</cfquery>
		</cfsilent>
		<cfif rsst.recordcount>
			<div class="control-group">
				<label class="control-label">#application.rbFactory.getKeyValue(session.rb,"sitemanager.content.type")#</label>
				<div class="controls">
					<select name="typeSelector"  onchange="siteManager.resetExtendedAttributes('#rc.contentBean.getcontentHistID()#',this.value,'#rc.siteID#','#application.configBean.getContext()#','#application.settingsManager.getSite(rc.siteID).getThemeAssetPath()#');">
					<option value="#t#^Default" <cfif rc.type eq t and rc.contentBean.getSubType() eq "Default">selected</cfif>>#application.rbFactory.getKeyValue(session.rb,"sitemanager.content.type.#lcase(t)#")#</option>
					<cfif rsst.recordcount>
						<cfloop query="rsst">
							<cfif rsst.subtype neq 'Default'><option value="#t#^#rsst.subtype#" <cfif rc.type eq t and rc.contentBean.getSubType() eq rsst.subtype>selected</cfif>>#application.rbFactory.getKeyValue(session.rb,"sitemanager.content.type.#lcase(t)#")#  / #rsst.subtype#</option></cfif>
						</cfloop>
					</cfif>
					</select>
				</div>
			</div>
		</cfif>
	</cfif>



</cfoutput>
