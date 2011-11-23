<%@ Control Language="C#" ClassName="PackageDetails" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
 <div class=" lbl alignleft" >
   <asp:Label ID="txtName_lbl" AssociatedControlID="txtName" runat="server" Text="<%$ resources: txtName.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtName" Rows="1"
MaxLength="64"
 />
  </div>

      </td>
                <td rowspan="3"  >
<asp:Panel runat="server" ID="ctrlstCreateModProps" CssClass="controlslist "
>
   <div class=" lbl alignleft">
   <asp:Label ID="dtpCreateDate_lbl" AssociatedControlID="dtpCreateDate" runat="server" Text="<%$ resources: dtpCreateDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtpCreateDate" ReadOnly="true" Enabled="false" DisplayTime="false" />
  </div>

   <div class=" lbl alignleft">
   <asp:Label ID="usrCreatedBy_lbl" AssociatedControlID="usrCreatedBy" runat="server" Text="<%$ resources: usrCreatedBy.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol user"  > 
    <SalesLogix:SlxUserControl runat="server" ID="usrCreatedBy" Enabled="false" ReadOnly="true"  />
  </div>

   <div class=" lbl alignleft">
   <asp:Label ID="dtpLastModified_lbl" AssociatedControlID="dtpLastModified" runat="server" Text="<%$ resources: dtpLastModified.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtpLastModified" ReadOnly="true" Enabled="false" DisplayTime="false" />
  </div>

   <div class=" lbl alignleft">
   <asp:Label ID="usrModifiedBy_lbl" AssociatedControlID="usrModifiedBy" runat="server" Text="<%$ resources: usrModifiedBy.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol user"  > 
    <SalesLogix:SlxUserControl runat="server" ID="usrModifiedBy" Enabled="false" ReadOnly="true"  />
  </div>

</asp:Panel>
      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtDescription_lbl" AssociatedControlID="txtDescription" runat="server" Text="<%$ resources: txtDescription.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtDescription" Rows="4"
TextMode="MultiLine" Columns="40"
 />
  </div>

      </td>
            </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklStatus_lbl" AssociatedControlID="pklStatus" runat="server" Text="<%$ resources: pklStatus.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklStatus" PickListName="Product Status"  />
  </div>

      </td>
            </tr>
<tr>
            <td></td>
                <td></td>
      </tr>
</table>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="PackageDetails_RTools" ToolbarLocation="right">
   <SalesLogix:GroupNavigator runat="server" ID="grpNavPackages" ></SalesLogix:GroupNavigator>
    <asp:ImageButton runat="server" ID="btnSave"
 ToolTip="<%$ resources: btnSave.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
    <asp:ImageButton runat="server" ID="btnInsertSave"
 ToolTip="<%$ resources: btnInsertSave.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
    <asp:ImageButton runat="server" ID="btnDelete"
 ToolTip="<%$ resources: btnDelete.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Delete_16x16" 
 />
   
  <SalesLogix:PageLink ID="lnkPackageDetailsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="packagedetailview" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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
	get { return typeof(Sage.Entity.Interfaces.IPackage); }
}

 

protected override void OnAddEntityBindings() { 
                    // txtName.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtNameTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Name", txtName, "Text");
        BindingSource.Bindings.Add(txtNameTextBinding);
       
                        // dtpCreateDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpCreateDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CreateDate", dtpCreateDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtpCreateDateDateTimeValueBinding);
                       // usrCreatedBy.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding usrCreatedByLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CreateUser", usrCreatedBy, "LookupResultValue");
        BindingSource.Bindings.Add(usrCreatedByLookupResultValueBinding);
                       // dtpLastModified.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpLastModifiedDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ModifyDate", dtpLastModified, "DateTimeValue");
        BindingSource.Bindings.Add(dtpLastModifiedDateTimeValueBinding);
                       // usrModifiedBy.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding usrModifiedByLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ModifyUser", usrModifiedBy, "LookupResultValue");
        BindingSource.Bindings.Add(usrModifiedByLookupResultValueBinding);
                       // txtDescription.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtDescriptionTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Description", txtDescription, "Text");
        BindingSource.Bindings.Add(txtDescriptionTextBinding);
                       // pklStatus.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklStatusPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Status", pklStatus, "PickListValue");
        BindingSource.Bindings.Add(pklStatusPickListValueBinding);
    
   
                }
	   	   	   	   	   	   	   	   
protected void btnSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IPackage _entity = BindingSource.Current as Sage.Entity.Interfaces.IPackage;
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
  
}
protected void btnInsertSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IPackage _entity = BindingSource.Current as Sage.Entity.Interfaces.IPackage;
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
          btnInsertSave_ClickActionBRC(sender, e);
    
  
}
protected void btnInsertSave_ClickActionBRC(object sender, EventArgs e) {
      Response.Redirect(string.Format("Package.aspx?entityId={0}", (this.BindingSource.Current as Sage.Platform.ComponentModel.IComponentReference).Id));
  
}
protected void btnDelete_ClickAction(object sender, EventArgs e) {
  Sage.Platform.Orm.Interfaces.IPersistentEntity persistentEntity = this.BindingSource.Current as Sage.Platform.Orm.Interfaces.IPersistentEntity;
  if (persistentEntity != null) {
    persistentEntity.Delete();
  }
          btnDelete_ClickActionBRC(sender, e);
    
  
}
protected void btnDelete_ClickActionBRC(object sender, EventArgs e) {
      Response.Redirect("Package.aspx");
  
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 btnSave.Click += new ImageClickEventHandler(btnSave_ClickAction);
btnInsertSave.Click += new ImageClickEventHandler(btnInsertSave_ClickAction);
btnDelete.Click += new ImageClickEventHandler(btnDelete_ClickAction);


}

protected void quickformload0(object sender, EventArgs e) {
Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
Object[] methodArgs = new Object[] { FormAdapter, e };
lib.Execute("PackageDetails.OnLoadPackageForm", methodArgs);
}
protected void quickformload1(object sender, EventArgs e) {
Sage.Platform.WebPortal.EntityPage page = Page as Sage.Platform.WebPortal.EntityPage;
if(page.IsInsertMode)
{
	Sage.Platform.WebPortal.SmartParts.IWebHelpLinkProvider helpLink = this.FindControl("lnkPackageDetailsHelp") as Sage.Platform.WebPortal.SmartParts.IWebHelpLinkProvider;
	if(helpLink != null)
		helpLink.SetHelpLinkUrl("packagetlistadd");
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
quickformload1(this, EventArgs.Empty);

}
protected override void OnFormBound()
{
Sage.Platform.WebPortal.EntityPage epage = Page as Sage.Platform.WebPortal.EntityPage;
        if (epage != null)
            _runActivating = (epage.IsNewEntity || _runActivating);
if (_runActivating) DoActivating();
ScriptManager.RegisterStartupScript(Page, GetType(), "cleanupcontainer", "jQuery(\".controlslist > div:empty\").remove();", true);
ClientBindingMgr.RegisterSaveButton(btnSave);

ClientBindingMgr.RegisterSaveButton(btnInsertSave);

btnDelete.OnClientClick = string.Format("return confirm('{0}');", Sage.Platform.WebPortal.PortalUtil.JavaScriptEncode(GetLocalResourceObject("btnDelete.ActionConfirmationMessage").ToString()));
ClientBindingMgr.RegisterSaveButton(btnDelete);



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
	get { return _formAdapter ?? (_formAdapter = new PackageDetailsAdapter(this)); }
}

public class PackageDetailsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IPackageDetails
{
	public PackageDetailsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.ITextBoxControl _txtName;
	public Sage.Platform.Controls.ITextBoxControl txtName
	{
		get { return FindControl(ref _txtName, "txtName"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtDescription;
	public Sage.Platform.Controls.ITextBoxControl txtDescription
	{
		get { return FindControl(ref _txtDescription, "txtDescription"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklStatus;
	public Sage.Platform.Controls.IPickListControl pklStatus
	{
		get { return FindControl(ref _pklStatus, "pklStatus"); }
	}
	private Sage.Platform.Controls.IControlsListControl _ctrlstCreateModProps;
	public Sage.Platform.Controls.IControlsListControl ctrlstCreateModProps
	{
		get { return FindControl(ref _ctrlstCreateModProps, "ctrlstCreateModProps"); }
	}
	private Sage.Platform.Controls.IDateTimePickerControl _dtpCreateDate;
	public Sage.Platform.Controls.IDateTimePickerControl dtpCreateDate
	{
		get { return FindControl(ref _dtpCreateDate, "dtpCreateDate"); }
	}
	private Sage.Platform.Controls.IUserControl _usrCreatedBy;
	public Sage.Platform.Controls.IUserControl usrCreatedBy
	{
		get { return FindControl(ref _usrCreatedBy, "usrCreatedBy"); }
	}
	private Sage.Platform.Controls.IDateTimePickerControl _dtpLastModified;
	public Sage.Platform.Controls.IDateTimePickerControl dtpLastModified
	{
		get { return FindControl(ref _dtpLastModified, "dtpLastModified"); }
	}
	private Sage.Platform.Controls.IUserControl _usrModifiedBy;
	public Sage.Platform.Controls.IUserControl usrModifiedBy
	{
		get { return FindControl(ref _usrModifiedBy, "usrModifiedBy"); }
	}
	private Sage.Platform.Controls.IGroupNavigatorControl _grpNavPackages;
	public Sage.Platform.Controls.IGroupNavigatorControl grpNavPackages
	{
		get { return FindControl(ref _grpNavPackages, "grpNavPackages"); }
	}
	private Sage.Platform.Controls.IButtonControl _btnSave;
	public Sage.Platform.Controls.IButtonControl btnSave
	{
		get { return FindControl(ref _btnSave, "btnSave"); }
	}
	private Sage.Platform.Controls.IButtonControl _btnInsertSave;
	public Sage.Platform.Controls.IButtonControl btnInsertSave
	{
		get { return FindControl(ref _btnInsertSave, "btnInsertSave"); }
	}
	private Sage.Platform.Controls.IButtonControl _btnDelete;
	public Sage.Platform.Controls.IButtonControl btnDelete
	{
		get { return FindControl(ref _btnDelete, "btnDelete"); }
	}

	public void OnLoadPackageForm(System.EventArgs e)
	{
		Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
		Object[] methodArgs = new Object[] { this, e };
		lib.Execute("PackageDetails.OnLoadPackageForm", methodArgs);
	}
}

</script>

<script type="text/javascript">
</script>
