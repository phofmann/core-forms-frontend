<#-- @ftlvariable name="self" type="com.tallence.formeditor.cae.elements.ConsentFormCheckBox" -->

<#assign validator = self.validator />
<#assign isMandatory = self.mandatory />

<div class="form-group">
  <div class="form-checkboxgroup">
    <div class="row">
      <p class="form-header<#if self.mandatory> mandatory</#if>">${self.name!""}</p>
    </div>
    <div class="row">
      <div class="input-checkbox">
        <div class="form-check">
          <input class="form-check-input"
                 type="checkbox"
                 name="${self.technicalName}"
                 id="${self.id}"/>
          <label class="form-check-label" for="${self.id}">

          <#-- if the hint contains an expected expression (%[^%]+%) and the linkTarget is not
              empty: replace the expression with an anchor-tag. Simply print the unchanged hint and the link otherwise.-->
          <#if self.linkTarget?has_content && self.hint?matches(".*%[^%]+%.*", "r")>
            ${self.hint?replace("%([^%]+)%",
            "<a href='" + cm.getLink(self.linkTarget) + "' title='$1'>$1</a>",
            "r")?no_esc}
          <#else>
            <a href="${cm.getLink(self.linkTarget)}">${self.hint!""}</a>
          </#if>
          </label>
        </div>
      </div>
    </div>
  </div>
</div>
