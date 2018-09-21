<#-- @ftlvariable name="self" type="com.tallence.formeditor.cae.elements.UsersMail" -->

<div class="form-group">
  <div class="input-text clearfix">
    <div class="row">
      <label for="${self.id}"<#if self.mandatory> class="mandatory"</#if>>${self.name!""}</label>
    </div>
    <div class="row">
      <div class="col">
        <input class="form-control"
               type="email"
               maxlength="128"
               placeholder=" "
               id="${self.id}"
               name="${self.technicalName}"
               <#if self.validator.mandatory?has_content> required</#if>>
        <#if self.hint?has_content>
          <div class="hint">
            ${self.hint}
          </div>
        </#if>
      </div>
    </div>
  </div>
  <div class="input-checkbox">
    <div class="row">
      <div class="col">
        <div class="form-check">
          <input type="checkbox" name="${self.sendCopyName}" id="sendUserMail${self.id}"/>
          <label for="sendUserMail${self.id}"><@bp.message "cae-form-sendCopyToUser"/></label>
        </div>
      </div>
    </div>
  </div>
</div>
