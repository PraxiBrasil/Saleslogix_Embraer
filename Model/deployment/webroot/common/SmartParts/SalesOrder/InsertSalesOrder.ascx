<%@ Control Language="C#" ClassName="InsertSalesOrder" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
<%@ Register Assembly="Sage.SalesLogix.Client.GroupBuilder" Namespace="Sage.SalesLogix.Client.GroupBuilder" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.PickList" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.DependencyLookup" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.Lookup" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.Timeline" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.HighLevelTypes" Namespace="Sage.SalesLogix.HighLevelTypes" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.Platform.WebPortal" Namespace="Sage.Platform.WebPortal.SmartParts" TagPrefix="SalesLogix" %>
<%//------------------------------------------------------------------------
//This file was generated by a tool.  Changes to this file may cause incorrect behavior and will be lost if the code is regenerated.
//------------------------------------------------------------------------ %>
<table border="0" cellpadding="1" cellspacing="0" class="formtable">
         <col width="50%" />
            <col width="50%" />
     <tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lueAccount_lbl" AssociatedControlID="lueAccount" runat="server" Text="<%$ resources: lueAccount.Caption %>" ></asp:Label>
 </div>   
  <div  class="textcontrol lookup"  >
<SalesLogix:LookupControl runat="server" ID="lueAccount" ButtonToolTip="<%$ resources: lueAccount.ButtonToolTip %>" LookupEntityName="Account" LookupEntityTypeName="Sage.SalesLogix.Entities.Account, Sage.SalesLogix.Entities" EnableHyperLinking="true" AutoPostBack="true" Required="true"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAccount.LookupProperties.AccountName.PropertyHeader %>" PropertyName="AccountName" PropertyType="" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAccount.LookupProperties.Address.City.PropertyHeader %>" PropertyName="Address.City" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAccount.LookupProperties.Address.State.PropertyHeader %>" PropertyName="Address.State" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAccount.LookupProperties.MainPhone.PropertyHeader %>" PropertyName="MainPhone" PropertyType="" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAccount.LookupProperties.Type.PropertyHeader %>" PropertyName="Type" PropertyType="" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAccount.LookupProperties.SubType.PropertyHeader %>" PropertyName="SubType" PropertyType="" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAccount.LookupProperties.Status.PropertyHeader %>" PropertyName="Status" PropertyType="" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAccount.LookupProperties.AccountManager.UserInfo.UserName.PropertyHeader %>" PropertyName="AccountManager.UserInfo.UserName" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAccount.LookupProperties.Owner.OwnerDescription.PropertyHeader %>" PropertyName="Owner.OwnerDescription" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklType_lbl" AssociatedControlID="pklType" runat="server" Text="<%$ resources: pklType.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklType" PickListName="Sales Order Type" MustExistInList="false"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="usrAccountManager_lbl" AssociatedControlID="usrAccountManager" runat="server" Text="<%$ resources: usrAccountManager.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol user"  > 
    <SalesLogix:SlxUserControl runat="server" ID="usrAccountManager" ButtonToolTip="<%$ resources: usrAccountManager.ButtonToolTip %>"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklStatus_lbl" AssociatedControlID="pklStatus" runat="server" Text="<%$ resources: pklStatus.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklStatus" PickListName="Sales Order Status" MustExistInList="false"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lueOpportunity_lbl" AssociatedControlID="lueOpportunity" runat="server" Text="<%$ resources: lueOpportunity.Caption %>" ></asp:Label>
 </div>   
  <div  class="textcontrol lookup"  >
<SalesLogix:LookupControl runat="server" ID="lueOpportunity" ButtonToolTip="<%$ resources: lueOpportunity.ButtonToolTip %>" LookupEntityName="Opportunity" LookupEntityTypeName="Sage.Entity.Interfaces.IOpportunity, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" SeedProperty="Account.Id" EnableHyperLinking="true" InitializeLookup="true" AutoPostBack="true" AllowClearingResult="true"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueOpportunity.LookupProperties.Description.PropertyHeader %>" PropertyName="Description" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueOpportunity.LookupProperties.AccountManager.UserInfo.UserName.PropertyHeader %>" PropertyName="AccountManager.UserInfo.UserName" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueOpportunity.LookupProperties.Account.AccountName.PropertyHeader %>" PropertyName="Account.AccountName" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueOpportunity.LookupProperties.Stage.PropertyHeader %>" PropertyName="Stage" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueOpportunity.LookupProperties.Status.PropertyHeader %>" PropertyName="Status" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueOpportunity.LookupProperties.Owner.OwnerDescription.PropertyHeader %>" PropertyName="Owner.OwnerDescription" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td  >
<asp:Panel runat="server" ID="ctrlstCurrency" CssClass="controlslist "
>
   <div class=" lbl alignleft">
   <asp:Label ID="lueCurrencyCode_lbl" AssociatedControlID="lueCurrencyCode" runat="server" Text="<%$ resources: lueCurrencyCode.Caption %>" ></asp:Label>
 </div>   
  <div  class="textcontrol lookup"  >
<SalesLogix:LookupControl runat="server" ID="lueCurrencyCode" ButtonToolTip="<%$ resources: lueCurrencyCode.ButtonToolTip %>" LookupEntityName="ExchangeRate" LookupEntityTypeName="Sage.Entity.Interfaces.IExchangeRate, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupBindingMode="String" AutoPostBack="true" LookupImageURL="~/ImageResource.axd?scope=global&type=Global_Images&key=Find_16x16"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueCurrencyCode.LookupProperties.Description.PropertyHeader %>" PropertyName="Description" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueCurrencyCode.LookupProperties.Rate.PropertyHeader %>" PropertyName="Rate" PropertyType="System.Double" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

   <div class=" lbl alignleft">
   <asp:Label ID="numExchangeRate_lbl" AssociatedControlID="numExchangeRate" runat="server" Text="<%$ resources: numExchangeRate.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol numeric"  > 
    <SalesLogix:NumericControl runat="server" ID="numExchangeRate"
ReadOnly="true" Enabled="false"  />
  </div>

</asp:Panel>
      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lueRequestedBy_lbl" AssociatedControlID="lueRequestedBy" runat="server" Text="<%$ resources: lueRequestedBy.Caption %>" ></asp:Label>
 </div>   
  <div  class="textcontrol lookup"  >
<SalesLogix:LookupControl runat="server" ID="lueRequestedBy" ButtonToolTip="<%$ resources: lueRequestedBy.ButtonToolTip %>" LookupEntityName="Contact" LookupEntityTypeName="Sage.Entity.Interfaces.IContact, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" SeedProperty="Account" InitializeLookup="true" AllowClearingResult="true" OverrideSeedOnSearch="true"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueRequestedBy.LookupProperties.NameLF.PropertyHeader %>" PropertyName="NameLF" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueRequestedBy.LookupProperties.AccountName.PropertyHeader %>" PropertyName="AccountName" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueRequestedBy.LookupProperties.Address.City.PropertyHeader %>" PropertyName="Address.City" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueRequestedBy.LookupProperties.Address.State.PropertyHeader %>" PropertyName="Address.State" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueRequestedBy.LookupProperties.WorkPhone.PropertyHeader %>" PropertyName="WorkPhone" PropertyType="System.String" PropertyFormat="Phone"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueRequestedBy.LookupProperties.Email.PropertyHeader %>" PropertyName="Email" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td></td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtpOrderDate_lbl" AssociatedControlID="dtpOrderDate" runat="server" Text="<%$ resources: dtpOrderDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtpOrderDate" ButtonToolTip="<%$ resources: dtpOrderDate.ButtonToolTip %>" DisplayTime="false" />
  </div>

      </td>
                <td></td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtpPromisedDate_lbl" AssociatedControlID="dtpPromisedDate" runat="server" Text="<%$ resources: dtpPromisedDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtpPromisedDate" ButtonToolTip="<%$ resources: dtpPromisedDate.ButtonToolTip %>" DisplayTime="false" />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="numShipping_lbl" AssociatedControlID="numShipping" runat="server" Text="<%$ resources: numShipping.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol numeric"  > 
    <SalesLogix:NumericControl runat="server" ID="numShipping"
 />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtCustPO_lbl" AssociatedControlID="txtCustPO" runat="server" Text="<%$ resources: txtCustPO.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtCustPO" Rows="1"
MaxLength="15"
 />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="numTaxRate_lbl" AssociatedControlID="numTaxRate" runat="server" Text="<%$ resources: numTaxRate.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol numeric"  > 
    <SalesLogix:NumericControl runat="server" ID="numTaxRate"
FormatType="Percent"  />
  </div>

      </td>
      </tr>
<tr>
            <td rowspan="2"  colspan="2" >
 <div class="twocollbl alignleft" >
   <asp:Label ID="txtComments_lbl" AssociatedControlID="txtComments" runat="server" Text="<%$ resources: txtComments.Caption %>" ></asp:Label>
 </div>
  <div  class="twocoltextcontrol"   >
<asp:TextBox runat="server" ID="txtComments" Rows="4"
TextMode="MultiLine" Columns="40"
 />
  </div>

      </td>
            </tr>
<tr>
              </tr>
</table>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="InsertSalesOrder_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnSave"
 AlternateText="<%$ resources: btnSave.Caption %>"  ToolTip="<%$ resources: btnSave.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
    <asp:ImageButton runat="server" ID="btnSaveNew"
 AlternateText="<%$ resources: btnSaveNew.Caption %>"  ToolTip="<%$ resources: btnSaveNew.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_New16x16"  />
   
  <SalesLogix:PageLink ID="lnkInsertSalesOrderHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="salesorderadd.htm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

<script runat="server" type="text/C#">
private Sage.Platform.Security.IRoleSecurityService _roleSecurityService;
/// <summary>
/// Gets or sets the role security service.
/// </summary>
/// <value>The role security service.</value>
[Sage.Platform.Application.ServiceDependency]
public Sage.Platform.Security.IRoleSecurityService RoleSecurityService
{
   set
      {
         _roleSecurityService = Sage.Platform.Application.ApplicationContext.Current.Services.Get<Sage.Platform.Security.IRoleSecurityService>(true);
      }
      get
      {
         return _roleSecurityService;
      }
}

public override Type EntityType
{
	get { return typeof(Sage.Entity.Interfaces.ISalesOrder); }
}

 

protected override void OnAddEntityBindings() { 
                    // lueAccount.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueAccountLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Account", lueAccount, "LookupResultValue");
        BindingSource.Bindings.Add(lueAccountLookupResultValueBinding);
                       // pklType.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("OrderType", pklType, "PickListValue");
        BindingSource.Bindings.Add(pklTypePickListValueBinding);
                       // usrAccountManager.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding usrAccountManagerLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("AccountManager", usrAccountManager, "LookupResultValue");
        BindingSource.Bindings.Add(usrAccountManagerLookupResultValueBinding);
                       // pklStatus.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklStatusPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Status", pklStatus, "PickListValue");
        BindingSource.Bindings.Add(pklStatusPickListValueBinding);
                       // lueOpportunity.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueOpportunityLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Opportunity", lueOpportunity, "LookupResultValue");
        BindingSource.Bindings.Add(lueOpportunityLookupResultValueBinding);
                 // lueOpportunity.SeedValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueOpportunitySeedValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Account.Id", lueOpportunity, "SeedValue");
        lueOpportunitySeedValueBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(lueOpportunitySeedValueBinding);
       
                        // lueCurrencyCode.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueCurrencyCodeLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CurrencyCode", lueCurrencyCode, "LookupResultValue");
        BindingSource.Bindings.Add(lueCurrencyCodeLookupResultValueBinding);
                       // numExchangeRate.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding numExchangeRateTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ExchangeRate", numExchangeRate, "Text");
        BindingSource.Bindings.Add(numExchangeRateTextBinding);
                       // lueRequestedBy.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueRequestedByLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("RequestedBy", lueRequestedBy, "LookupResultValue");
        BindingSource.Bindings.Add(lueRequestedByLookupResultValueBinding);
                 // lueRequestedBy.SeedValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueRequestedBySeedValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Account.Id", lueRequestedBy, "SeedValue");
        lueRequestedBySeedValueBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(lueRequestedBySeedValueBinding);
                       // dtpOrderDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpOrderDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("OrderDate", dtpOrderDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtpOrderDateDateTimeValueBinding);
                       // dtpPromisedDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpPromisedDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("DatePromised", dtpPromisedDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtpPromisedDateDateTimeValueBinding);
                       // numShipping.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding numShippingTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Freight", numShipping, "Text");
        BindingSource.Bindings.Add(numShippingTextBinding);
                       // txtCustPO.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtCustPOTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CustomerPurchaseOrderNumber", txtCustPO, "Text");
        BindingSource.Bindings.Add(txtCustPOTextBinding);
                       // numTaxRate.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding numTaxRateTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Tax", numTaxRate, "Text");
        BindingSource.Bindings.Add(numTaxRateTextBinding);
                       // txtComments.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtCommentsTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Comments", txtComments, "Text");
        BindingSource.Bindings.Add(txtCommentsTextBinding);
    
   
        }
	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   
protected void lueAccount_ChangeAction(object sender, EventArgs e) {
      object[] objarray = new object[] { this.BindingSource.Current };
     Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.ISalesOrder>("SalesOrder.OnAccountChanged", objarray);
          lueAccount_ChangeActionBRC(sender, e);
    
  
}
protected void lueAccount_ChangeActionBRC(object sender, EventArgs e) {
Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
if (refresher != null) {
  refresher.RefreshAll();
}
else {  
  Response.Redirect(Request.Url.ToString());
}
}
protected void lueOpportunity_ChangeAction(object sender, EventArgs e) {
      object[] objarray = new object[] { this.BindingSource.Current };
     Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.ISalesOrder>("SalesOrder.OnOpportunityChanged", objarray);
  
}
protected void lueCurrencyCode_ChangeAction(object sender, EventArgs e) {
      object[] objarray = new object[] { this.BindingSource.Current };
     Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.ISalesOrder>("SalesOrder.SetExchangeRate", objarray);
  
}
protected void btnSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.ISalesOrder _entity = BindingSource.Current as Sage.Entity.Interfaces.ISalesOrder;
  if (_entity != null) 
  {
    object _parent = GetParentEntity(); 
    if (DialogService.ChildInsertInfo != null) 
    {
      if (_parent != null) 
      {
        if (DialogService.ChildInsertInfo.ParentReferenceProperty != null) 
        {
          DialogService.ChildInsertInfo.ParentReferenceProperty.SetValue(_entity, _parent, null);
        }        
      }
    }
    bool shouldSave = true;
    Sage.Platform.WebPortal.EntityPage page = Page as Sage.Platform.WebPortal.EntityPage;
	if (page != null)
	{
       if(IsInDialog() && page.ModeId.ToUpper() == "INSERT")
       {
         shouldSave = false;
       }
	}

    if(shouldSave)
    {
       _entity.Save();
    }
    
    if (_parent != null)
    {
        if (DialogService.ChildInsertInfo != null)
        {
           if (DialogService.ChildInsertInfo.ParentsCollectionProperty != null) 
           {
              System.Reflection.MethodInfo _add = DialogService.ChildInsertInfo.ParentsCollectionProperty.PropertyType.GetMethod("Add");
              _add.Invoke(DialogService.ChildInsertInfo.ParentsCollectionProperty.GetValue(_parent, null), new object[] { _entity });
           }
        }
     }        
  }
          btnSave_ClickActionBRC(sender, e);
    
  
}
protected void btnSave_ClickActionBRC(object sender, EventArgs e) {
      Response.Redirect(string.Format("SalesOrder.aspx?entityId={0}", (this.BindingSource.Current as Sage.Platform.ComponentModel.IComponentReference).Id));
  
}
protected void btnSaveNew_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.ISalesOrder _entity = BindingSource.Current as Sage.Entity.Interfaces.ISalesOrder;
  if (_entity != null) 
  {
    object _parent = GetParentEntity(); 
    if (DialogService.ChildInsertInfo != null) 
    {
      if (_parent != null) 
      {
        if (DialogService.ChildInsertInfo.ParentReferenceProperty != null) 
        {
          DialogService.ChildInsertInfo.ParentReferenceProperty.SetValue(_entity, _parent, null);
        }        
      }
    }
    bool shouldSave = true;
    Sage.Platform.WebPortal.EntityPage page = Page as Sage.Platform.WebPortal.EntityPage;
	if (page != null)
	{
       if(IsInDialog() && page.ModeId.ToUpper() == "INSERT")
       {
         shouldSave = false;
       }
	}

    if(shouldSave)
    {
       _entity.Save();
    }
    
    if (_parent != null)
    {
        if (DialogService.ChildInsertInfo != null)
        {
           if (DialogService.ChildInsertInfo.ParentsCollectionProperty != null) 
           {
              System.Reflection.MethodInfo _add = DialogService.ChildInsertInfo.ParentsCollectionProperty.PropertyType.GetMethod("Add");
              _add.Invoke(DialogService.ChildInsertInfo.ParentsCollectionProperty.GetValue(_parent, null), new object[] { _entity });
           }
        }
     }        
  }
          btnSaveNew_ClickActionBRC(sender, e);
    
  
}
protected void btnSaveNew_ClickActionBRC(object sender, EventArgs e) {
      Response.Redirect(string.Format("InsertSalesOrder.aspx?modeid=Insert&entityId={0}", (BindingSource.Current as Sage.Platform.ComponentModel.IComponentReference).Id));
   
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 lueAccount.LookupResultValueChanged += new EventHandler(lueAccount_ChangeAction);
lueOpportunity.LookupResultValueChanged += new EventHandler(lueOpportunity_ChangeAction);
lueCurrencyCode.LookupResultValueChanged += new EventHandler(lueCurrencyCode_ChangeAction);
btnSave.Click += new ImageClickEventHandler(btnSave_ClickAction);
btnSaveNew.Click += new ImageClickEventHandler(btnSaveNew_ClickAction);


}

protected void quickformload0(object sender, EventArgs e) {
Sage.Entity.Interfaces.ISalesOrder salesOrder = BindingSource.Current as Sage.Entity.Interfaces.ISalesOrder;
// Import Products
if (Request.QueryString["opp"] != null && Request.QueryString["opp"].Equals("yes"))
{
    // Products may only be imported when create SalesOrder is 
    // envoked from the Opp Task Pane or the Opportunity Sales Order grid.  
    Sage.SalesLogix.SalesOrder.SalesOrder.AddDefaultSOProducts(salesOrder);
}
else if (Request.QueryString["copyOrder"] != null && Request.QueryString["entityId"] != null &&
         Request.QueryString["copyOrder"].Equals("true"))
{
    Sage.Entity.Interfaces.ISalesOrder copyFromSalesOrder =
        Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.ISalesOrder>(Request.QueryString["entityId"]);
    salesOrder.CopySalesOrder(copyFromSalesOrder);
}

}
protected void quickformload1(object sender, EventArgs e) {
Sage.Entity.Interfaces.ISalesOrder salesOrder = BindingSource.Current as Sage.Entity.Interfaces.ISalesOrder;
if (salesOrder.IsMultiCurrencyEnabled())
{
	ctrlstCurrency.Visible = true;
    if (FormHelper.GetSystemInfoOption("ChangeSalesOrderRate"))
    {
    	numExchangeRate.Enabled = true;
        numExchangeRate.ReadOnly = false;
    }
}
}
private bool _runActivating;
protected override void OnActivating()
{
_runActivating = true;
}
private void DoActivating()
{
quickformload0(this, EventArgs.Empty);

}
protected override void OnFormBound()
{
Sage.Platform.WebPortal.EntityPage epage = Page as Sage.Platform.WebPortal.EntityPage;
        if (epage != null)
            _runActivating = (epage.IsNewEntity || _runActivating);
if (_runActivating) DoActivating();
ScriptManager.RegisterStartupScript(Page, GetType(), "cleanupcontainer", "jQuery(\".controlslist > div:empty\").remove();", true);
ClientBindingMgr.RegisterSaveButton(btnSave);

ClientBindingMgr.RegisterSaveButton(btnSaveNew);

quickformload1(this, EventArgs.Empty);


}



public override Sage.Platform.Application.UI.ISmartPartInfo GetSmartPartInfo(Type smartPartInfoType)
{
	ToolsSmartPartInfo tinfo = new ToolsSmartPartInfo();
    	if (BindingSource != null)
	{
		if (BindingSource.Current != null)
		{
			tinfo.Description = BindingSource.Current.ToString();
			tinfo.Title = BindingSource.Current.ToString();
		}
	}
    	
	foreach (Control c in Controls)
	{
		SmartPartToolsContainer cont = c as SmartPartToolsContainer;
		if (cont != null)
		{
			switch (cont.ToolbarLocation)
			{
				case SmartPartToolsLocation.Right:
					foreach (Control tool in cont.Controls)
					{
											tinfo.RightTools.Add(tool);
										}
					break;
				case SmartPartToolsLocation.Center:
					foreach (Control tool in cont.Controls)
					{
						tinfo.CenterTools.Add(tool);
					}
					break;
				case SmartPartToolsLocation.Left:
					foreach (Control tool in cont.Controls)
					{
						tinfo.LeftTools.Add(tool);
					}
					break;
			}
		}
	}
	
		return tinfo;
}

private Sage.Platform.Controls.IEntityForm _formAdapter;

public Sage.Platform.Controls.IEntityForm FormAdapter
{
	get { return _formAdapter ?? (_formAdapter = new InsertSalesOrderAdapter(this)); }
}

public class InsertSalesOrderAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IInsertSalesOrder
{
	public InsertSalesOrderAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.ILookupControl _lueAccount;
	public Sage.Platform.Controls.ILookupControl lueAccount
	{
		get { return FindControl(ref _lueAccount, "lueAccount"); }
	}
	private Sage.Platform.Controls.IUserControl _usrAccountManager;
	public Sage.Platform.Controls.IUserControl usrAccountManager
	{
		get { return FindControl(ref _usrAccountManager, "usrAccountManager"); }
	}
	private Sage.Platform.Controls.ILookupControl _lueOpportunity;
	public Sage.Platform.Controls.ILookupControl lueOpportunity
	{
		get { return FindControl(ref _lueOpportunity, "lueOpportunity"); }
	}
	private Sage.Platform.Controls.ILookupControl _lueRequestedBy;
	public Sage.Platform.Controls.ILookupControl lueRequestedBy
	{
		get { return FindControl(ref _lueRequestedBy, "lueRequestedBy"); }
	}
	private Sage.Platform.Controls.IDateTimePickerControl _dtpOrderDate;
	public Sage.Platform.Controls.IDateTimePickerControl dtpOrderDate
	{
		get { return FindControl(ref _dtpOrderDate, "dtpOrderDate"); }
	}
	private Sage.Platform.Controls.IDateTimePickerControl _dtpPromisedDate;
	public Sage.Platform.Controls.IDateTimePickerControl dtpPromisedDate
	{
		get { return FindControl(ref _dtpPromisedDate, "dtpPromisedDate"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtCustPO;
	public Sage.Platform.Controls.ITextBoxControl txtCustPO
	{
		get { return FindControl(ref _txtCustPO, "txtCustPO"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtComments;
	public Sage.Platform.Controls.ITextBoxControl txtComments
	{
		get { return FindControl(ref _txtComments, "txtComments"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklType;
	public Sage.Platform.Controls.IPickListControl pklType
	{
		get { return FindControl(ref _pklType, "pklType"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklStatus;
	public Sage.Platform.Controls.IPickListControl pklStatus
	{
		get { return FindControl(ref _pklStatus, "pklStatus"); }
	}
	private Sage.Platform.Controls.IControlsListControl _ctrlstCurrency;
	public Sage.Platform.Controls.IControlsListControl ctrlstCurrency
	{
		get { return FindControl(ref _ctrlstCurrency, "ctrlstCurrency"); }
	}
	private Sage.Platform.Controls.ILookupControl _lueCurrencyCode;
	public Sage.Platform.Controls.ILookupControl lueCurrencyCode
	{
		get { return FindControl(ref _lueCurrencyCode, "lueCurrencyCode"); }
	}
	private Sage.Platform.Controls.INumericControl _numExchangeRate;
	public Sage.Platform.Controls.INumericControl numExchangeRate
	{
		get { return FindControl(ref _numExchangeRate, "numExchangeRate"); }
	}
	private Sage.Platform.Controls.INumericControl _numShipping;
	public Sage.Platform.Controls.INumericControl numShipping
	{
		get { return FindControl(ref _numShipping, "numShipping"); }
	}
	private Sage.Platform.Controls.INumericControl _numTaxRate;
	public Sage.Platform.Controls.INumericControl numTaxRate
	{
		get { return FindControl(ref _numTaxRate, "numTaxRate"); }
	}
	private Sage.Platform.Controls.IButtonControl _btnSave;
	public Sage.Platform.Controls.IButtonControl btnSave
	{
		get { return FindControl(ref _btnSave, "btnSave"); }
	}
	private Sage.Platform.Controls.IButtonControl _btnSaveNew;
	public Sage.Platform.Controls.IButtonControl btnSaveNew
	{
		get { return FindControl(ref _btnSaveNew, "btnSaveNew"); }
	}

}

</script>

<script type="text/javascript">
</script>
