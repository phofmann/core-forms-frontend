<#-- @ftlvariable name="self" type="com.tallence.formeditor.contentbeans.FormEditor" -->
<#-- @ftlvariable name="att_class" type="java.lang.String" -->

<#assign additionalCssClasses=att_class!""/>

<div class="cm-richtext-embedded cm-richtext-embedded--teasable ${additionalCssClasses}">
  <@cm.include self=self view="detail" />
</div>
