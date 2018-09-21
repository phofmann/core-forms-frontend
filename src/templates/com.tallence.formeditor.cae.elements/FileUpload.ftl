<#-- @ftlvariable name="self" type="com.tallence.formeditor.cae.elements.FileUpload" -->

<div class="form-group">
  <div class="input-upload">
    <div class="row">
      <label for="${self.id}"<#if self.mandatory> class="mandatory"</#if>>${self.name!""}</label>
    </div>
    <div class="row">
      <div class="col">
        <input class="form-control-file"
               type="file"
               name="${self.technicalName}"
               id="${self.id}"
               size="${self.validator.maxSize}" <#if self.validator.mandatory?has_content> required</#if>>
        <#if self.hint?has_content>
          <div class="hint">
            ${self.hint}
          </div>
        </#if>
      </div>
    </div>
  </div>
</div>
