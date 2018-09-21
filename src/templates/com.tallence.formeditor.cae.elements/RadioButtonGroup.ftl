<#-- @ftlvariable name="self" type="com.tallence.formeditor.cae.elements.RadioButtonGroup" -->
<#-- @ftlvariable name="cmpage" type="com.coremedia.blueprint.common.contentbeans.Page" -->

<#assign radioButtons = self.radioButtons![]/>
<#assign ceilIndex = ((radioButtons?size)/2)?ceiling/>

<div class="form-group">
  <div class="input-radio">
    <div class="row">
      <p class="form-header<#if self.mandatory> mandatory</#if>">${self.name!""}</p>
    </div>

    <div class="row">
    <#--render the boxes in two columns-->
    <#--Column 1-->
      <#if radioButtons?has_content>
        <div class="col-3 input-radio">
          <#assign end = (ceilIndex < 1)?then(0,ceilIndex-1)/>
          <#list radioButtons[0..end] as option>
            <@cm.include self=self view='renderRadioButton' params={"option": option}/>
          </#list>
        </div>
      </#if>

    <#--Column 2-->
      <#if radioButtons?size gt 1>
        <div class="col-3 input-radio">
          <#list radioButtons[ceilIndex..] as option>
            <@cm.include self=self view='renderRadioButton' params={"option": option}/>
          </#list>
        </div>
      </#if>
    </div>
  </div>
</div>
