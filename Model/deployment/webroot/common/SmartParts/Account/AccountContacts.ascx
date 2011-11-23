<%@ Control Language="C#" ClassName="AccountContacts" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdAccountContacts" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 AllowPaging="true" PageSize="10" OnPageIndexChanging="grdAccountContactspage_changing" EmptyTableRowText="<%$ resources: grdAccountContacts.EmptyTableRowText %>"  ExpandableRows="True" ResizableColumns="True"  AllowSorting="true" OnSorting="grdAccountContacts_Sorting"  ShowSortIcon="true" >
<Columns>
   <asp:TemplateField   HeaderText="<%$ resources: grdAccountContacts.b3e50ac9-8c26-4fad-94de-cd264a414209.ColumnHeading %>"       SortExpression="LastName"  >
    <itemtemplate>
      <SalesLogix:PageLink runat="server" NavigateUrl="Contact"
   EntityId='<%# dsGrid0.getPropertyValue(Container.DataItem, "Id") %>'     Text='<%# string.Format(base.GetLocalResourceObject("grdAccountContacts.b3e50ac9-8c26-4fad-94de-cd264a414209.FormatString").ToString(), dsGrid0.getPropertyValue(Container.DataItem, "LastName"), dsGrid0.getPropertyValue(Container.DataItem, "FirstName")) %>' 
         LinkType="EntityAlias"></SalesLogix:PageLink>
     </itemtemplate></asp:TemplateField>
      <asp:BoundField DataField="IsPrimary" 
      HeaderText="<%$ resources: grdAccountContacts.5d12726b-20b5-47cf-aa2f-b4f005b24b7f.ColumnHeading %>"       SortExpression="IsPrimary"    >
      </asp:BoundField>
    <asp:TemplateField   HeaderText="<%$ resources: grdAccountContacts.1bb85f2f-5423-4938-a40c-df75c00e5ab9.ColumnHeading %>"       SortExpression="WorkPhone"  >
    <itemtemplate>
   <SalesLogix:Phone runat="server" ID="grdAccountContactscol3" DisplayAsLabel="True" Text='<%#  dsGrid0.getPropertyValue(Container.DataItem, "WorkPhone")  %>' CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:BoundField DataField="Title" 
      HeaderText="<%$ resources: grdAccountContacts.78a7c620-18b8-4c85-a06e-88338be0d1c9.ColumnHeading %>"       SortExpression="Title"    >
      </asp:BoundField>
    <asp:BoundField DataField="Address.City" 
      HeaderText="<%$ resources: grdAccountContacts.f64da4cb-e735-4332-b92b-3c494be38716.ColumnHeading %>"       SortExpression="Address.City"    >
      </asp:BoundField>
    <asp:BoundField DataField="Address.State" 
      HeaderText="<%$ resources: grdAccountContacts.28953275-3f32-45bc-aa0c-4929e231a7c9.ColumnHeading %>"       SortExpression="Address.State"    >
      </asp:BoundField>
    <asp:BoundField DataField="Type" 
      HeaderText="<%$ resources: grdAccountContacts.1a69ad2a-2dd7-4c35-994a-3288a2cec55f.ColumnHeading %>"       SortExpression="Type"    >
      </asp:BoundField>
    <asp:BoundField DataField="Department" 
      HeaderText="<%$ resources: grdAccountContacts.64e7fdbb-6ca0-4fea-8dd3-877ec7602901.ColumnHeading %>"       SortExpression="Department"    >
      </asp:BoundField>
 </Columns>
    <PagerSettings Mode="NumericFirstLast" FirstPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=Start_16x16" LastPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=End_16x16" />
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">


protected void grdAccountContactspage_changing(object sender, GridViewPageEventArgs e)
{
 grdAccountContacts.PageIndex = e.NewPageIndex;
 grdAccountContacts.DataBind();
}
protected void grdAccountContacts_Sorting(object sender, GridViewSortEventArgs e) { }
</script>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="AccountContacts_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="cmdIncludeContact"
 AlternateText="<%$ resources: cmdIncludeContact.Caption %>"  ToolTip="<%$ resources: cmdIncludeContact.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
  <SalesLogix:PageLink ID="lnkAccountContactsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="accountcontactstab.htm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsGrid0;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsGrid0
{ 
  get 
  {
    if (_dsGrid0 == null)
    {
             _dsGrid0 = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IContact), 
	    EntityType              ,"Contacts", System.Reflection.MemberTypes.Property);
                   _dsGrid0.UseSmartQuery = true;
      	   	}
 	return _dsGrid0;
  }
}

void dsGrid0_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsGrid0.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsGrid0);
   }
}

 



 

protected override void OnAddEntityBindings() { 
       dsGrid0.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("Contacts", grdAccountContacts ));
   dsGrid0.BindFieldNames = new String[] { "Id","LastName","FirstName","IsPrimary","WorkPhone","Title","Address.City","Address.State","Type","Department" };
                
     BindingSource.OnCurrentEntitySet += new EventHandler(dsGrid0_OnCurrentEntitySet);
     
         
      
      
      
    }
	   
protected void cmdIncludeContact_ClickAction(object sender, EventArgs e) {
Response.Redirect(string.Format("InsertContactAccount.aspx?modeid=Insert&accountId={0}", (this.BindingSource.Current as Sage.Entity.Interfaces.IAccount).Id));
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 if (_roleSecurityService != null)
{
if (_roleSecurityService.HasAccess("ENTITIES/CONTACT/ADD"))
{
cmdIncludeContact.Click += new ImageClickEventHandler(cmdIncludeContact_ClickAction);
}
}


}

protected override void OnFormBound()
{
if (dsGrid0.SourceObject == null) { dsGrid0.SourceObject = BindingSource.Current; }
if (dsGrid0.SourceObject == null) { RegisterBindingsWithClient(dsGrid0); }
dsGrid0.Bind();

if (!_roleSecurityService.HasAccess("ENTITIES/CONTACT/ADD"))
{
cmdIncludeContact.Visible = false;
}


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
	get { return _formAdapter ?? (_formAdapter = new AccountContactsAdapter(this)); }
}

public class AccountContactsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IAccountContacts
{
	public AccountContactsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.IDataGridControl _grdAccountContacts;
	public Sage.Platform.Controls.IDataGridControl grdAccountContacts
	{
		get { return FindControl(ref _grdAccountContacts, "grdAccountContacts"); }
	}
	private Sage.Platform.Controls.IDataSourceControl _dsGrid0;
	public Sage.Platform.Controls.IDataSourceControl dsGrid0
	{
		get { return FindControl(ref _dsGrid0, "dsGrid0"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdIncludeContact;
	public Sage.Platform.Controls.IButtonControl cmdIncludeContact
	{
		get { return FindControl(ref _cmdIncludeContact, "cmdIncludeContact"); }
	}

}

</script>

<script type="text/javascript">
</script>
