<#-- @ftlvariable name="self" type="com.tallence.formeditor.cae.elements.CheckBoxesGroup" -->

<#assign checkBoxes = self.checkBoxes![]/>
<#assign ceilIndex = ((checkBoxes?size)/2)?ceiling/>

<div class="form-group">
  <div class="form-checkboxgroup">
    <div class="row">
      <p class="form-header<#if self.mandatory> mandatory</#if>">${self.name!""}</p>
    </div>

    <div class="row">
    <#--render the boxes in two columns-->
    <#--Column 1-->
      <#if checkBoxes?has_content>
        <div class="col-3 input-checkbox">
          <#assign end = (ceilIndex < 1)?then(0, ceilIndex-1)/>
          <#list checkBoxes[0..end] as option>
            <div class="form-check">
              <@cm.include self=self view='renderCheckBox' params={"option": option}/>
            </div>
          </#list>
        </div>
      </#if>

    <#--Column 2-->
      <#if checkBoxes?size gt 1>
        <div class="col-3 input-checkbox">
          <#list checkBoxes[ceilIndex..] as option>
            <div class="form-check">
              <@cm.include self=self view='renderCheckBox' params={"option": option}/>
            </div>
          </#list>
        </div>
      </#if>
    </div>
  </div>
</div>
