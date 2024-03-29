<%@ Control Language="C#" ClassName="InsertReturn" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
         <col width="33.3%" />
            <col width="33.3%" />
     <tr>
            <td  >
 <div class="slxlabel"><asp:Label runat="server" ID="QFLabel" Text="<%$ resources: QFLabel.Text %>"  />
</div>
      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklStatus_lbl" AssociatedControlID="pklStatus" runat="server" Text="<%$ resources: pklStatus.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklStatus" PickListName="Return Status" AutoPostBack="true"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="luTicketId_lbl" AssociatedControlID="luTicketId" runat="server" Text="<%$ resources: luTicketId.Caption %>" ></asp:Label>
 </div>   
  <div  class="textcontrol lookup"  >
<SalesLogix:LookupControl runat="server" ID="luTicketId" ButtonToolTip="<%$ resources: luTicketId.ButtonToolTip %>" LookupEntityName="Ticket" LookupEntityTypeName="Sage.Entity.Interfaces.ITicket, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" AutoPostBack="true"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: luTicketId.LookupProperties.TicketNumber.PropertyHeader %>" PropertyName="TicketNumber" PropertyType="System.String" PropertyFormat="PickList"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: luTicketId.LookupProperties.Account.AccountName.PropertyHeader %>" PropertyName="Account.AccountName" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: luTicketId.LookupProperties.Contact.NameLF.PropertyHeader %>" PropertyName="Contact.NameLF" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: luTicketId.LookupProperties.Contact.WorkPhone.PropertyHeader %>" PropertyName="Contact.WorkPhone" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: luTicketId.LookupProperties.StatusCode.PropertyHeader %>" PropertyName="StatusCode" PropertyType="SalesLogix.PickList" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: luTicketId.LookupProperties.Urgency.Description.PropertyHeader %>" PropertyName="Urgency.Description" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: luTicketId.LookupProperties.Area.PropertyHeader %>" PropertyName="Area" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
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
    <SalesLogix:PickListControl runat="server" ID="pklType" PickListName="Return Type"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtAccount_lbl" AssociatedControlID="txtAccount" runat="server" Text="<%$ resources: txtAccount.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtAccount" ReadOnly="true" Rows="1"
 />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklPriority_lbl" AssociatedControlID="pklPriority" runat="server" Text="<%$ resources: pklPriority.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklPriority" PickListName="Return Priority"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="luContact_lbl" AssociatedControlID="luContact" runat="server" Text="<%$ resources: luContact.Caption %>" ></asp:Label>
 </div>   
  <div  class="textcontrol lookup"  >
<SalesLogix:LookupControl runat="server" ID="luContact" ButtonToolTip="<%$ resources: luContact.ButtonToolTip %>" LookupEntityName="Contact" LookupEntityTypeName="Sage.Entity.Interfaces.IContact, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" SeedProperty="Account.Id"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: luContact.LookupProperties.NameLF.PropertyHeader %>" PropertyName="NameLF" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: luContact.LookupProperties.AccountName.PropertyHeader %>" PropertyName="AccountName" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: luContact.LookupProperties.Address.City.PropertyHeader %>" PropertyName="Address.City" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: luContact.LookupProperties.Address.State.PropertyHeader %>" PropertyName="Address.State" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: luContact.LookupProperties.WorkPhone.PropertyHeader %>" PropertyName="WorkPhone" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: luContact.LookupProperties.Email.PropertyHeader %>" PropertyName="Email" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtpExpectedDate_lbl" AssociatedControlID="dtpExpectedDate" runat="server" Text="<%$ resources: dtpExpectedDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtpExpectedDate" ButtonToolTip="<%$ resources: dtpExpectedDate.ButtonToolTip %>" DisplayTime="false" Timeless="true" />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtReason_lbl" AssociatedControlID="txtReason" runat="server" Text="<%$ resources: txtReason.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtReason" Rows="1"
 />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="ownAssignedTo_lbl" AssociatedControlID="ownAssignedTo" runat="server" Text="<%$ resources: ownAssignedTo.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol owner"  > 
<SalesLogix:OwnerControl runat="server" ID="ownAssignedTo" ButtonToolTip="<%$ resources: ownAssignedTo.ButtonToolTip %>" Types="$qfcontrol.Types"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtPO_lbl" AssociatedControlID="txtPO" runat="server" Text="<%$ resources: txtPO.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtPO" Rows="1"
 />
  </div>

      </td>
                <td></td>
      </tr>
</table>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="InsertReturn_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnSave"
 AlternateText="<%$ resources: btnSave.Caption %>"  ToolTip="<%$ resources: btnSave.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
  <SalesLogix:PageLink ID="lnkInsertReturnHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="returnadd.htm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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
	get { return typeof(Sage.Entity.Interfaces.IReturn); }
}

 

protected override void OnAddEntityBindings() { 
    
                        // pklStatus.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklStatusPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Status", pklStatus, "PickListValue");
        BindingSource.Bindings.Add(pklStatusPickListValueBinding);
                       // luTicketId.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding luTicketIdLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Ticket", luTicketId, "LookupResultValue");
        BindingSource.Bindings.Add(luTicketIdLookupResultValueBinding);
                       // pklType.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ReturnType", pklType, "PickListValue");
        BindingSource.Bindings.Add(pklTypePickListValueBinding);
                       // txtAccount.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtAccountTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Account", txtAccount, "Text");
        BindingSource.Bindings.Add(txtAccountTextBinding);
                       // pklPriority.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklPriorityPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Priority", pklPriority, "PickListValue");
        BindingSource.Bindings.Add(pklPriorityPickListValueBinding);
                       // luContact.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding luContactLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ReturnedBy", luContact, "LookupResultValue");
        BindingSource.Bindings.Add(luContactLookupResultValueBinding);
                 // luContact.SeedValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding luContactSeedValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Account.Id", luContact, "SeedValue");
        luContactSeedValueBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(luContactSeedValueBinding);
                       // dtpExpectedDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpExpectedDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ExpectedDate", dtpExpectedDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtpExpectedDateDateTimeValueBinding);
                       // txtReason.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtReasonTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Reason", txtReason, "Text");
        BindingSource.Bindings.Add(txtReasonTextBinding);
                       // ownAssignedTo.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding ownAssignedToLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("AssignedTo", ownAssignedTo, "LookupResultValue");
        BindingSource.Bindings.Add(ownAssignedToLookupResultValueBinding);
                       // txtPO.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtPOTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CustomerPO", txtPO, "Text");
        BindingSource.Bindings.Add(txtPOTextBinding);
    
   
    }
	   	   	   	   	   	   	   	   	   	   	   
protected void pklStatus_ChangeAction(object sender, EventArgs e) {
      object[] objarray = new object[] { this.BindingSource.Current };
     Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.IReturn>("Return.OnSetStatus", objarray);
  
}
protected void luTicketId_ChangeAction(object sender, EventArgs e) {
      object[] objarray = new object[] { this.BindingSource.Current };
     Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.IReturn>("Return.OnAssociateTicket", objarray);
  
}
protected void btnSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IReturn _entity = BindingSource.Current as Sage.Entity.Interfaces.IReturn;
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
      Response.Redirect(string.Format("Return.aspx?entityId={0}", (this.BindingSource.Current as Sage.Platform.ComponentModel.IComponentReference).Id));
  
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 pklStatus.PickListValueChanged += new EventHandler(pklStatus_ChangeAction);
luTicketId.LookupResultValueChanged += new EventHandler(luTicketId_ChangeAction);
btnSave.Click += new ImageClickEventHandler(btnSave_ClickAction);


}

protected override void OnFormBound()
{
ClientBindingMgr.RegisterSaveButton(btnSave);



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
	get { return _formAdapter ?? (_formAdapter = new InsertReturnAdapter(this)); }
}

public class InsertReturnAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IInsertReturn
{
	public InsertReturnAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.ILabelControl _QFLabel;
	public Sage.Platform.Controls.ILabelControl QFLabel
	{
		get { return FindControl(ref _QFLabel, "QFLabel"); }
	}
	private Sage.Platform.Controls.ILookupControl _luTicketId;
	public Sage.Platform.Controls.ILookupControl luTicketId
	{
		get { return FindControl(ref _luTicketId, "luTicketId"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtAccount;
	public Sage.Platform.Controls.ITextBoxControl txtAccount
	{
		get { return FindControl(ref _txtAccount, "txtAccount"); }
	}
	private Sage.Platform.Controls.ILookupControl _luContact;
	public Sage.Platform.Controls.ILookupControl luContact
	{
		get { return FindControl(ref _luContact, "luContact"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtReason;
	public Sage.Platform.Controls.ITextBoxControl txtReason
	{
		get { return FindControl(ref _txtReason, "txtReason"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtPO;
	public Sage.Platform.Controls.ITextBoxControl txtPO
	{
		get { return FindControl(ref _txtPO, "txtPO"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklStatus;
	public Sage.Platform.Controls.IPickListControl pklStatus
	{
		get { return FindControl(ref _pklStatus, "pklStatus"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklType;
	public Sage.Platform.Controls.IPickListControl pklType
	{
		get { return FindControl(ref _pklType, "pklType"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklPriority;
	public Sage.Platform.Controls.IPickListControl pklPriority
	{
		get { return FindControl(ref _pklPriority, "pklPriority"); }
	}
	private Sage.Platform.Controls.IDateTimePickerControl _dtpExpectedDate;
	public Sage.Platform.Controls.IDateTimePickerControl dtpExpectedDate
	{
		get { return FindControl(ref _dtpExpectedDate, "dtpExpectedDate"); }
	}
	private Sage.Platform.Controls.IOwnerControl _ownAssignedTo;
	public Sage.Platform.Controls.IOwnerControl ownAssignedTo
	{
		get { return FindControl(ref _ownAssignedTo, "ownAssignedTo"); }
	}
	private Sage.Platform.Controls.IButtonControl _btnSave;
	public Sage.Platform.Controls.IButtonControl btnSave
	{
		get { return FindControl(ref _btnSave, "btnSave"); }
	}

}

</script>

<script type="text/javascript">
</script>
