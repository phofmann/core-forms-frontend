<#-- @ftlvariable name="self" type="com.tallence.formeditor.contentbeans.FormEditor" -->
<#import "*/node_modules/@coremedia/ftl-utils/src/freemarkerLibs/utils.ftl" as utils />

<#assign blockClass=cm.localParameter("blockClass", "cm-details") />
<#assign itemsClass=cm.localParameter("itemsClass", "") />
<#assign relatedView=cm.localParameters().relatedView!"related" />
<#assign carouselParams=cm.localParameters().carouselParams!{} />
<#assign viewItems=cm.localParameters().viewItems!"asTeaser" />
<#assign renderDate=cm.localParameter("renderDate", true) />
<#assign renderTags=cm.localParameter("renderTags", true) />
<#assign renderRelated=cm.localParameter("renderRelated", true) />

<#assign carouselParams=carouselParams + {"additionalClass": "${blockClass}__medias", "viewItems": "_header", "modifier": "details"}/>

<article class="${blockClass}"<@preview.metadata self.content />>

<#-- title -->
  <h1 class="${blockClass}__headline"<@preview.metadata "properties.title"/>>${self.title!""}</h1>

<#-- media -->
  <@cm.include self=bp.getContainer(self.media) view="asCarousel" params=carouselParams/>

<#-- text -->
  <#if self.detailText?has_content>
    <div class="${blockClass}__text cm-richtext"<@preview.metadata "properties.detailText"/>>
      <@cm.include self=self.detailText!cm.UNDEFINED />
    </div>
  </#if>

  <@cm.include self=self view="_form"/>

<#-- date -->
  <#if renderDate && self.externallyDisplayedDate?has_content>
    <div class="${blockClass}__date"<@preview.metadata "properties.externallyDisplayedDate"/>>
      <@utils.renderDate date=self.externallyDisplayedDate.time
      cssClass="${blockClass}__time"
      metadata=["properties.externallyDisplayedDate"] />
    </div>
  </#if>

<#-- tags -->
  <#if renderTags>
    <@cm.include self=self view="_tagList"/>
  </#if>
</article>

<#-- related -->
<#if renderRelated>
  <@cm.include self=self view="_related" params={"relatedView": relatedView}/>
</#if>

<#-- extensions -->
<@cm.hook id=bp.viewHookEventNames.VIEW_HOOK_END />
