<#-- @ftlvariable name="self" type="com.tallence.formeditor.contentbeans.FormEditor" -->
<#assign formElements=form.parseFormElements(self)/>
<#assign link=cm.getLink(self, "formEditorSubmit") />

  <form action="${link}" class="cm-form cm-form--custom" method="post" enctype="multipart/form-data">
    <div class="container">
    <#list formElements as element>
      <@cm.include self=element/>
    </#list>
      <button class="btn btn-primary" type="submit">Form submit</button>
    </div>
  </form>
