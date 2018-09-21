<#-- @ftlvariable name="self" type="com.tallence.formeditor.cae.elements.TextArea" -->

<#assign validator = self.validator />
<#assign isMandatory = self.mandatory />

<div class="form-group">
  <div class="textarea-full">

    <div class="row">
      <label for="${self.id}"<#if self.mandatory> class="mandatory"</#if>>${self.name!""}</label>
    </div>

    <div class="row">
      <div class="col">
        <textarea class="form-control"
                  maxlength="${self.validator.maxSize?has_content?then(self.validator.maxSize, 500)}"
                  id="${self.id}"
                  name="${self.technicalName}"
                  rows="${self.rows?has_content?then(self.rows, 4)}"
                  <#if self.validator.mandatory?has_content> required</#if>></textarea>
      </div>
    </div>
  </div>
</div>
