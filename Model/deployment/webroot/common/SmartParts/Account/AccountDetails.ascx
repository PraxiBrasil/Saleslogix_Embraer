<%@ Control Language="C#" ClassName="AccountDetails" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
         <col width="33.33333%" />
            <col width="33.33333%" />
            <col width="33.33333%" />
     <tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="AccountName_lbl" AssociatedControlID="AccountName" runat="server" Text="<%$ resources: AccountName.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="AccountName" Rows="1"
MaxLength="128"
 />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="MainPhone_lbl" AssociatedControlID="MainPhone" runat="server" Text="<%$ resources: MainPhone.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol phone"  > 
    <SalesLogix:Phone runat="server" ID="MainPhone"
 />
  </div>

      </td>
                <td rowspan="4"  >
<asp:Panel runat="server" ID="QFControlsList" CssClass="controlslist "
>
   <div class=" lbl alignleft" >
   <asp:Label ID="txtInterestedIn_lbl" AssociatedControlID="txtInterestedIn" runat="server" Text="<%$ resources: txtInterestedIn.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtInterestedIn" ReadOnly="true" Rows="4"
TextMode="MultiLine" Columns="40"
 />
  </div>

   <asp:ImageButton runat="server" ID="btnInterestedIn"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=elipses"  />
 
</asp:Panel>
      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="Division_lbl" AssociatedControlID="Division" runat="server" Text="<%$ resources: Division.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="Division" Rows="1"
MaxLength="64"
 />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="Fax_lbl" AssociatedControlID="Fax" runat="server" Text="<%$ resources: Fax.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol phone"  > 
    <SalesLogix:Phone runat="server" ID="Fax"
 />
  </div>

      </td>
            </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lnkParent_lbl" AssociatedControlID="lnkParent" runat="server" Text="<%$ resources: lnkParent.Caption %>" ></asp:Label>
 </div>   
  <div  class="textcontrol lookup"  >
<SalesLogix:LookupControl runat="server" ID="lnkParent" LookupEntityName="Account" LookupEntityTypeName="Sage.Entity.Interfaces.IAccount, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupDisplayMode="Text" LookupBindingMode="String" DropDownDisplayProperty="AccountName" LookupImageURL="~/ImageResource.axd?scope=global&type=Global_Images&key=Find_16x16"  >
<LookupProperties>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="WebAddress_lbl" AssociatedControlID="WebAddress" runat="server" Text="<%$ resources: WebAddress.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol urlcontrol"  > 
    <SalesLogix:URL runat="server" ID="WebAddress" ButtonToolTip="<%$ resources: WebAddress.ButtonToolTip %>" URLTextBoxStyle-ForeColor="#000099" URLTextBoxStyle-Font-Underline="false" />
  </div>

      </td>
            </tr>
<tr>
            <td rowspan="4"  >
 <div class=" lbl alignleft">
   <asp:Label ID="Address_lbl" AssociatedControlID="Address" runat="server" Text="<%$ resources: Address.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol address"  >
    <SalesLogix:AddressControl runat="server" ID="Address" AddressDescriptionPickListName="Address Description (Account)" AddressDescriptionPickListId="kSYST0000014" ButtonToolTip="<%$ resources: Address.ButtonToolTip %>" AddressToolTip="<%$ resources: Address.AddressToolTip %>" >
<AddressDescStyle Height="80"></AddressDescStyle> </SalesLogix:AddressControl>
</div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklType_lbl" AssociatedControlID="pklType" runat="server" Text="<%$ resources: pklType.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklType" PickListId="kSYST0000382" PickListName="Account Type" AutoPostBack="true" NoneEditable="true"  />
  </div>

      </td>
            </tr>
<tr>
                  <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklSubType_lbl" AssociatedControlID="pklSubType" runat="server" Text="<%$ resources: pklSubType.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklSubType" PickListId="kSYST0000382" MustExistInList="false"  />
  </div>

      </td>
                <td rowspan="4"  >
<asp:Panel runat="server" ID="QFControlsList2" CssClass="controlslist "
>
   <div class=" lbl alignleft" >
   <asp:Label ID="txtOwnedProducts_lbl" AssociatedControlID="txtOwnedProducts" runat="server" Text="<%$ resources: txtOwnedProducts.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtOwnedProducts" Rows="4"
TextMode="MultiLine" Columns="40"
 />
  </div>

   <asp:ImageButton runat="server" ID="btnOwnedProducts"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=elipses"  />
 
</asp:Panel>
      </td>
      </tr>
<tr>
                  <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="Status_lbl" AssociatedControlID="Status" runat="server" Text="<%$ resources: Status.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="Status" PickListId="kSYST0000381" PickListName="Account Status" MustExistInList="false" AlphaSort="true"  />
  </div>

      </td>
            </tr>
<tr>
                  <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="Industry_lbl" AssociatedControlID="Industry" runat="server" Text="<%$ resources: Industry.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="Industry" PickListId="kSYST0000388" PickListName="Industry" MustExistInList="false" AlphaSort="true"  />
  </div>

      </td>
            </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="Owner_lbl" AssociatedControlID="Owner" runat="server" Text="<%$ resources: Owner.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol owner"  > 
<SalesLogix:OwnerControl runat="server" ID="Owner" ButtonToolTip="<%$ resources: Owner.ButtonToolTip %>" Types="$qfcontrol.Types"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="AccManager_lbl" AssociatedControlID="AccManager" runat="server" Text="<%$ resources: AccManager.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol user"  > 
    <SalesLogix:SlxUserControl runat="server" ID="AccManager" ButtonToolTip="<%$ resources: AccManager.ButtonToolTip %>"  />
  </div>

      </td>
            </tr>
<tr>
            <td></td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="TollFree_lbl" AssociatedControlID="TollFree" runat="server" Text="<%$ resources: TollFree.Caption %>" Visible="false" ></asp:Label>
 </div>   
   <div  class="textcontrol phone"  > 
    <SalesLogix:Phone runat="server" ID="TollFree"
MaxLength="32" Visible="false"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="BusinessDescription_lbl" AssociatedControlID="BusinessDescription" runat="server" Text="<%$ resources: BusinessDescription.Caption %>" Visible="false" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="BusinessDescription" Rows="1"
Visible="false"  />
  </div>

      </td>
      </tr>
</table>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="AccountDetails_RTools" ToolbarLocation="right">
   <SalesLogix:GroupNavigator runat="server" ID="AccountDetails_9" ></SalesLogix:GroupNavigator>
    <asp:ImageButton runat="server" ID="btnSaveAccount"
 AlternateText="<%$ resources: btnSaveAccount.Caption %>"  ToolTip="<%$ resources: btnSaveAccount.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
    <asp:ImageButton runat="server" ID="btnDelete"
 AlternateText="<%$ resources: btnDelete.Caption %>"  ToolTip="<%$ resources: btnDelete.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Delete_16x16" 
 />
 
   <SalesLogix:Copy ID="cmdCopyAccount" runat="server" CopyToDestination="Clipboard"
 ContentConfig="~/SummaryConfigData/CopyAccount.xml" 
 ToolTip="<%$ resources: cmdCopyAccount.ToolTip %>"  ButtonImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=CopyToClipboard_16x16"  DisplayMode="AsControl" 
>
</SalesLogix:Copy>

  <SalesLogix:PageLink ID="lnkAccountDetailsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="accountdetailview.htm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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
	get { return typeof(Sage.Entity.Interfaces.IAccount); }
}

 

protected override void OnAddEntityBindings() { 
                    // AccountName.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AccountNameTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("AccountName", AccountName, "Text");
        BindingSource.Bindings.Add(AccountNameTextBinding);
                       // MainPhone.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding MainPhoneTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("MainPhone", MainPhone, "Text");
        BindingSource.Bindings.Add(MainPhoneTextBinding);
       
                        // txtInterestedIn.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtInterestedInTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("InterestedIn", txtInterestedIn, "Text");
        BindingSource.Bindings.Add(txtInterestedInTextBinding);
       
                        // Division.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding DivisionTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Division", Division, "Text");
        BindingSource.Bindings.Add(DivisionTextBinding);
                       // Fax.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding FaxTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Fax", Fax, "Text");
        BindingSource.Bindings.Add(FaxTextBinding);
                       // lnkParent.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lnkParentLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ParentId", lnkParent, "LookupResultValue");
        BindingSource.Bindings.Add(lnkParentLookupResultValueBinding);
                       // WebAddress.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding WebAddressTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("WebAddress", WebAddress, "Text");
        BindingSource.Bindings.Add(WebAddressTextBinding);
                       // Address.AddressCity Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AddressAddressCityBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Address.City", Address, "AddressCity");
        AddressAddressCityBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(AddressAddressCityBinding);
                 // Address.AddressCountry Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AddressAddressCountryBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Address.Country", Address, "AddressCountry");
        AddressAddressCountryBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(AddressAddressCountryBinding);
                 // Address.AddressCounty Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AddressAddressCountyBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Address.County", Address, "AddressCounty");
        AddressAddressCountyBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(AddressAddressCountyBinding);
                 // Address.AddressDesc1 Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AddressAddressDesc1Binding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Address.Address1", Address, "AddressDesc1");
        BindingSource.Bindings.Add(AddressAddressDesc1Binding);
                 // Address.AddressDesc2 Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AddressAddressDesc2Binding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Address.Address2", Address, "AddressDesc2");
        AddressAddressDesc2Binding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(AddressAddressDesc2Binding);
                 // Address.AddressDesc3 Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AddressAddressDesc3Binding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Address.Address3", Address, "AddressDesc3");
        AddressAddressDesc3Binding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(AddressAddressDesc3Binding);
                 // Address.AddressDescription Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AddressAddressDescriptionBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Address.Description", Address, "AddressDescription");
        AddressAddressDescriptionBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(AddressAddressDescriptionBinding);
                 // Address.AddressDisplay Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AddressAddressDisplayBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Address.FullAddress", Address, "AddressDisplay");
        AddressAddressDisplayBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(AddressAddressDisplayBinding);
                 // Address.AddressIsMailing Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AddressAddressIsMailingBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Address.IsMailing", Address, "AddressIsMailing");
        AddressAddressIsMailingBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(AddressAddressIsMailingBinding);
                 // Address.AddressIsPrimary Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AddressAddressIsPrimaryBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Address.IsPrimary", Address, "AddressIsPrimary");
        AddressAddressIsPrimaryBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(AddressAddressIsPrimaryBinding);
                 // Address.AddressPostalCode Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AddressAddressPostalCodeBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Address.PostalCode", Address, "AddressPostalCode");
        AddressAddressPostalCodeBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(AddressAddressPostalCodeBinding);
                 // Address.AddressSalutation Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AddressAddressSalutationBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Address.Salutation", Address, "AddressSalutation");
        AddressAddressSalutationBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(AddressAddressSalutationBinding);
                 // Address.AddressState Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AddressAddressStateBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Address.State", Address, "AddressState");
        AddressAddressStateBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(AddressAddressStateBinding);
                       // pklType.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Type", pklType, "PickListValue");
        BindingSource.Bindings.Add(pklTypePickListValueBinding);
                       // pklSubType.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklSubTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("SubType", pklSubType, "PickListValue");
        BindingSource.Bindings.Add(pklSubTypePickListValueBinding);
       
                        // txtOwnedProducts.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtOwnedProductsTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("OwnedProducts", txtOwnedProducts, "Text");
        BindingSource.Bindings.Add(txtOwnedProductsTextBinding);
       
                        // Status.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding StatusPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Status", Status, "PickListValue");
        BindingSource.Bindings.Add(StatusPickListValueBinding);
                       // Industry.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding IndustryPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Industry", Industry, "PickListValue");
        BindingSource.Bindings.Add(IndustryPickListValueBinding);
                       // Owner.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding OwnerLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Owner", Owner, "LookupResultValue", "", null);
        BindingSource.Bindings.Add(OwnerLookupResultValueBinding);
                       // AccManager.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AccManagerLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("AccountManager", AccManager, "LookupResultValue", "", null);
        BindingSource.Bindings.Add(AccManagerLookupResultValueBinding);
                       // TollFree.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding TollFreeTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("TollFree", TollFree, "Text");
        BindingSource.Bindings.Add(TollFreeTextBinding);
                       // BusinessDescription.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding BusinessDescriptionTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("BusinessDescription", BusinessDescription, "Text");
        BindingSource.Bindings.Add(BusinessDescriptionTextBinding);
    
   
             
      
      
      
             
      
      
      
        }
	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   
protected void pklType_ChangeAction(object sender, EventArgs e) {
Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
if (refresher != null) {
  refresher.RefreshAll();
}
else {  
  Response.Redirect(Request.Url.ToString());
}
}
protected void btnSaveAccount_ClickAction(object sender, EventArgs e) {
Sage.Entity.Interfaces.IAccount entity = (Sage.Entity.Interfaces.IAccount) this.BindingSource.Current;
if (entity.HasPropagationChanges()) {
            btnSaveAccount_ClickActionS(sender, e);
      
      }
else {
            btnSaveAccount_ClickActionF(sender, e);
      
      }
}
protected void btnSaveAccount_ClickActionS(object sender, EventArgs e) {
if (DialogService != null) {
	// DialogActionItem
	DialogService.SetSpecs(400, 400, "UpdateAccountOptions", string.Empty );
    DialogService.EntityType = typeof(Sage.Entity.Interfaces.IAccount); 
    DialogService.ShowDialog();
}
}
protected void btnSaveAccount_ClickActionF(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IAccount _entity = BindingSource.Current as Sage.Entity.Interfaces.IAccount;
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
          btnSaveAccount_ClickActionFBRC(sender, e);
    
  
}
protected void btnSaveAccount_ClickActionFBRC(object sender, EventArgs e) {
Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
if (refresher != null) {
  refresher.RefreshAll();
}
else {  
  Response.Redirect(Request.Url.ToString());
}
}
protected void btnDelete_ClickAction(object sender, EventArgs e) {
  Sage.Platform.Orm.Interfaces.IPersistentEntity persistentEntity = this.BindingSource.Current as Sage.Platform.Orm.Interfaces.IPersistentEntity;
  if (persistentEntity != null) {
    persistentEntity.Delete();
  }
          btnDelete_ClickActionBRC(sender, e);
    
  
}
protected void btnDelete_ClickActionBRC(object sender, EventArgs e) {
      Response.Redirect("Account.aspx");
  
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 pklType.PickListValueChanged += new EventHandler(pklType_ChangeAction);
if (_roleSecurityService != null)
{
if (_roleSecurityService.HasAccess("ENTITIES/ACCOUNT/EDIT"))
{
btnSaveAccount.Click += new ImageClickEventHandler(btnSaveAccount_ClickAction);
}
}
if (_roleSecurityService != null)
{
if (_roleSecurityService.HasAccess("ENTITIES/ACCOUNT/DELETE"))
{
btnDelete.Click += new ImageClickEventHandler(btnDelete_ClickAction);
}
}


}

protected void quickformload0(object sender, EventArgs e) {
//Begin Load Action

     Sage.Entity.Interfaces.IAccount account = this.BindingSource.Current as Sage.Entity.Interfaces.IAccount;
	 pklSubType.PickListName = account.GetSubTypePickListName();

//End Load Action}
}
protected override void OnFormBound()
{
ScriptManager.RegisterStartupScript(Page, GetType(), "cleanupcontainer", "jQuery(\".controlslist > div:empty\").remove();", true);
ScriptManager.RegisterStartupScript(Page, GetType(), "cleanupcontainer", "jQuery(\".controlslist > div:empty\").remove();", true);
ClientBindingMgr.RegisterSaveButton(btnSaveAccount);

btnDelete.OnClientClick = string.Format("return confirm('{0}');", Sage.Platform.WebPortal.PortalUtil.JavaScriptEncode(GetLocalResourceObject("btnDelete.ActionConfirmationMessage").ToString()));

if (!_roleSecurityService.HasAccess("ENTITIES/ACCOUNT/EDIT"))
{
btnSaveAccount.Visible = false;
}
if (!_roleSecurityService.HasAccess("ENTITIES/ACCOUNT/DELETE"))
{
btnDelete.Visible = false;
}
quickformload0(this, EventArgs.Empty);


}



public override Sage.Platform.Application.UI.ISmartPartInfo GetSmartPartInfo(Type smartPartInfoType)
{
	ToolsSmartPartInfo tinfo = new ToolsSmartPartInfo();
    	
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
	get { return _formAdapter ?? (_formAdapter = new AccountDetailsAdapter(this)); }
}

public class AccountDetailsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IAccountDetails
{
	public AccountDetailsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.ITextBoxControl _AccountName;
	public Sage.Platform.Controls.ITextBoxControl AccountName
	{
		get { return FindControl(ref _AccountName, "AccountName"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _Division;
	public Sage.Platform.Controls.ITextBoxControl Division
	{
		get { return FindControl(ref _Division, "Division"); }
	}
	private Sage.Platform.Controls.ILookupControl _lnkParent;
	public Sage.Platform.Controls.ILookupControl lnkParent
	{
		get { return FindControl(ref _lnkParent, "lnkParent"); }
	}
	private Sage.Platform.Controls.IAddressControl _Address;
	public Sage.Platform.Controls.IAddressControl Address
	{
		get { return FindControl(ref _Address, "Address"); }
	}
	private Sage.Platform.Controls.IOwnerControl _Owner;
	public Sage.Platform.Controls.IOwnerControl Owner
	{
		get { return FindControl(ref _Owner, "Owner"); }
	}
	private Sage.Platform.Controls.IPhoneControl _MainPhone;
	public Sage.Platform.Controls.IPhoneControl MainPhone
	{
		get { return FindControl(ref _MainPhone, "MainPhone"); }
	}
	private Sage.Platform.Controls.IPhoneControl _Fax;
	public Sage.Platform.Controls.IPhoneControl Fax
	{
		get { return FindControl(ref _Fax, "Fax"); }
	}
	private Sage.Platform.Controls.IUrlControl _WebAddress;
	public Sage.Platform.Controls.IUrlControl WebAddress
	{
		get { return FindControl(ref _WebAddress, "WebAddress"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklType;
	public Sage.Platform.Controls.IPickListControl pklType
	{
		get { return FindControl(ref _pklType, "pklType"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklSubType;
	public Sage.Platform.Controls.IPickListControl pklSubType
	{
		get { return FindControl(ref _pklSubType, "pklSubType"); }
	}
	private Sage.Platform.Controls.IPickListControl _Status;
	public Sage.Platform.Controls.IPickListControl Status
	{
		get { return FindControl(ref _Status, "Status"); }
	}
	private Sage.Platform.Controls.IPickListControl _Industry;
	public Sage.Platform.Controls.IPickListControl Industry
	{
		get { return FindControl(ref _Industry, "Industry"); }
	}
	private Sage.Platform.Controls.IUserControl _AccManager;
	public Sage.Platform.Controls.IUserControl AccManager
	{
		get { return FindControl(ref _AccManager, "AccManager"); }
	}
	private Sage.Platform.Controls.IPhoneControl _TollFree;
	public Sage.Platform.Controls.IPhoneControl TollFree
	{
		get { return FindControl(ref _TollFree, "TollFree"); }
	}
	private Sage.Platform.Controls.IControlsListControl _QFControlsList;
	public Sage.Platform.Controls.IControlsListControl QFControlsList
	{
		get { return FindControl(ref _QFControlsList, "QFControlsList"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtInterestedIn;
	public Sage.Platform.Controls.ITextBoxControl txtInterestedIn
	{
		get { return FindControl(ref _txtInterestedIn, "txtInterestedIn"); }
	}
	private Sage.Platform.Controls.IButtonControl _btnInterestedIn;
	public Sage.Platform.Controls.IButtonControl btnInterestedIn
	{
		get { return FindControl(ref _btnInterestedIn, "btnInterestedIn"); }
	}
	private Sage.Platform.Controls.IControlsListControl _QFControlsList2;
	public Sage.Platform.Controls.IControlsListControl QFControlsList2
	{
		get { return FindControl(ref _QFControlsList2, "QFControlsList2"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtOwnedProducts;
	public Sage.Platform.Controls.ITextBoxControl txtOwnedProducts
	{
		get { return FindControl(ref _txtOwnedProducts, "txtOwnedProducts"); }
	}
	private Sage.Platform.Controls.IButtonControl _btnOwnedProducts;
	public Sage.Platform.Controls.IButtonControl btnOwnedProducts
	{
		get { return FindControl(ref _btnOwnedProducts, "btnOwnedProducts"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _BusinessDescription;
	public Sage.Platform.Controls.ITextBoxControl BusinessDescription
	{
		get { return FindControl(ref _BusinessDescription, "BusinessDescription"); }
	}
	private Sage.Platform.Controls.IGroupNavigatorControl _AccountDetails_9;
	public Sage.Platform.Controls.IGroupNavigatorControl AccountDetails_9
	{
		get { return FindControl(ref _AccountDetails_9, "AccountDetails_9"); }
	}
	private Sage.Platform.Controls.IButtonControl _btnSaveAccount;
	public Sage.Platform.Controls.IButtonControl btnSaveAccount
	{
		get { return FindControl(ref _btnSaveAccount, "btnSaveAccount"); }
	}
	private Sage.Platform.Controls.IButtonControl _btnDelete;
	public Sage.Platform.Controls.IButtonControl btnDelete
	{
		get { return FindControl(ref _btnDelete, "btnDelete"); }
	}
	private Sage.Platform.Controls.ICopyControl _cmdCopyAccount;
	public Sage.Platform.Controls.ICopyControl cmdCopyAccount
	{
		get { return FindControl(ref _cmdCopyAccount, "cmdCopyAccount"); }
	}

}

</script>

<script type="text/javascript">
</script>
