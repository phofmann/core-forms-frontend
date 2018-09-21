<#-- @ftlvariable name="self" type="com.tallence.formeditor.cae.elements.CheckBoxesGroup" -->
<#-- @ftlvariable name="option" type="com.tallence.formeditor.cae.elements.ComplexValue" -->

<#assign optionId = (self.id + option.value)?replace(" ", "-")/>
<input class="form-check-input"
       type="checkbox"
       name="${self.technicalName}"
       value="${option.value}"
       id="${optionId}"
       <#if option.selectedByDefault>checked="checked"</#if>
/>
<label class="form-check-label" for="${optionId}">${option.value}</label>
