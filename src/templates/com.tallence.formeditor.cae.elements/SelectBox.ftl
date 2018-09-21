<#-- @ftlvariable name="self" type="com.tallence.formeditor.cae.elements.SelectBox" -->
<#-- @ftlvariable name="cmpage" type="com.coremedia.blueprint.common.contentbeans.Page" -->

<#assign validator = self.validator />
<#assign isMandatory = self.mandatory />

<div class="form-group">
  <div class="select clearfix">
    <div class="row">
      <label for="${self.id}"<#if self.mandatory> class="mandatory"</#if>>${self.name!""}</label>
    </div>
    <div class="row">
      <div class="col">
        <select class="select form-control"
                name="${self.technicalName}"
                id="${self.id}">
          <option value=""><@bp.message "cae-form-select-default"/></option>
                <#list self.options![] as option>
                    <option value="${option.value}"
                        <#if option.selectedByDefault>selected="selected"</#if>>
                      ${option.value}
                    </option>
                </#list>
        </select>
      </div>
    </div>
  </div>
</div>
