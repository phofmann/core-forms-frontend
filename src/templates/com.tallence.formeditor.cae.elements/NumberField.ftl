<#-- @ftlvariable name="self" type="com.tallence.formeditor.cae.elements.NumberField" -->
<#-- @ftlvariable name="cmpage" type="com.coremedia.blueprint.common.contentbeans.Page" -->

<#assign validator = self.validator />
<#assign isMandatory = self.mandatory />

<div class="form__group">
    <div class="input-text clearfix">
        <div class="row">
            <div class="col-10">
                <label for="${self.id}">${self.name!""}${isMandatory?then(' *','')}</label>
            </div>
            <div class="col-2">
            <@cm.include self=self view="fieldtip"/>
            </div>
        </div>
        <div class="row">
            <div class="col" :class="{'is-invalid': errors.has('${self.technicalName}') }">

                <#assign veeValExpr = ""/>
                <#if validator.maxSize?has_content>
                    <#assign veeValExpr = (veeValExpr?has_content?then(veeValExpr + ", ", "")) + "max_value: " + validator.maxSize />
                </#if>
                <#if validator.minSize?has_content>
                    <#assign veeValExpr = (veeValExpr?has_content?then(veeValExpr + ", ", "")) + "min_value: " + validator.minSize />
                </#if>
                <#if isMandatory>
                    <#assign veeValExpr = (veeValExpr?has_content?then(veeValExpr + ", ", "")) + "required: true" />
                </#if>

                <input type="number"
                       class="form-control"
                       :class="{'is-invalid': errors.has('${self.technicalName}') }"
                       id="${self.id}"
                       value="${self.value!""}"
                       name="${self.technicalName}"
                       <#if veeValExpr?has_content>v-validate="{ ${veeValExpr} }"</#if>>
                <small class="error text-danger" v-if="errors.has('${self.technicalName}')">
                    Bitte das Feld ausfüllen.
                </small>
            </div>
        </div>
    </div>
</div>