<#-- @ftlvariable name="self" type="com.tallence.formeditor.cae.elements.TextField" -->

<#assign hasRegexpValidator = self.validator.regexp?has_content?then(self.validator.regexp.pattern()?has_content, false) />

<div class="form-group">
  <div class="input-text">
    <div class="row">
      <label for="${self.id}"<#if self.mandatory> class="mandatory"</#if>>${self.name!""}</label>
    </div>
    <div class="row">
      <div class="col">
        <input type="text" class="form-control" placeholder=" " id="${self.id}" name="${self.technicalName}" value="${self.value!""}"
                       <#if self.validator.maxSize?has_content> maxlength="${self.validator.maxSize}"</#if>
                       <#if self.validator.minSize?has_content> minlength="${self.validator.minSize}"</#if>
                       <#if self.validator.mandatory?has_content> required</#if>
                       <#if hasRegexpValidator>pattern="${self.validator.regexp}" </#if> >
        <#if self.hint?has_content>
          <div class="hint">
            ${self.hint}
          </div>
        </#if>
      </div>
    </div>
  </div>
</div>
