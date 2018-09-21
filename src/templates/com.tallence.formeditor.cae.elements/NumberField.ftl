<#-- @ftlvariable name="self" type="com.tallence.formeditor.cae.elements.NumberField" -->

<div class="form-group">
  <div class="input-text">
    <div class="row">
      <label for="${self.id}"<#if self.mandatory> class="mandatory"</#if>>${self.name!""}</label>
    </div>
    <div class="row">
      <div class="col">
        <input type="number"
               class="form-control"
               id="${self.id}"
               value="${self.value!""}"
               name="${self.technicalName}"
               <#if self.validator.maxSize?has_content> maxlength="${self.validator.maxSize}"</#if>
               <#if self.validator.minSize?has_content> minlength="${self.validator.minSize}"</#if>
               <#if self.validator.mandatory?has_content> required</#if>>
        <#if self.hint?has_content>
          <div class="hint">
            ${self.hint}
          </div>
        </#if>
      </div>
    </div>
  </div>
</div>
