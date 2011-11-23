<%@ Control Language="C#" ClassName="UserTeamMembership" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdOwnerJoins" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 AllowPaging="true" PageSize="20" OnPageIndexChanging="grdOwnerJoinspage_changing" EmptyTableRowText="<%$ resources: grdOwnerJoins.EmptyTableRowText %>"  ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdOwnerJoins_RowCommand" 
 DataKeyNames="InstanceId,ChildOwnerId, ParentOwnerId" 
 AllowSorting="true" OnSorting="grdOwnerJoins_Sorting"  OnRowDeleting="grdOwnerJoins_RowDeleting" OnRowDataBound="grdOwnerJoins_RowDataBound"  ShowSortIcon="true" >
<Columns>
   <asp:TemplateField   HeaderText="<%$ resources: grdOwnerJoins.4c9291e2-62c4-42b3-9952-8a3c3886c0d4.ColumnHeading %>"       SortExpression="Parent.User.UserInfo.UserName"  >
    <itemtemplate>
      <SalesLogix:PageLink runat="server" NavigateUrl="User"
   EntityId='<%# dsOwnerJoins.getPropertyValue(Container.DataItem, "Parent.User.Id") %>'     Text='<%# dsOwnerJoins.getPropertyValue(Container.DataItem, "Parent.User.UserInfo.UserName") %>' 
         LinkType="EntityAlias"></SalesLogix:PageLink>
     </itemtemplate></asp:TemplateField>
      <asp:TemplateField   HeaderText="<%$ resources: grdOwnerJoins.2b94a1e7-5fe8-42e5-9e49-9362d08b6fc2.ColumnHeading %>"       SortExpression="OwnerSecurityProfile.ProfileDescription"  >
    <itemtemplate>
      <asp:HyperLink runat="server" 
    Text='<%# Server.HtmlEncode(Eval("OwnerSecurityProfile.ProfileDescription").ToString()) %>' 
          NavigateUrl='<%# string.Format(base.GetLocalResourceObject("grdOwnerJoins.2b94a1e7-5fe8-42e5-9e49-9362d08b6fc2.DestinationFormatString").ToString(), Server.HtmlEncode(Eval("Child.Id").ToString()), Server.HtmlEncode(Eval(" Parent.Id").ToString()), Server.HtmlEncode(Eval(" OwnerSecurityProfile.Id").ToString())) %>'  />
     </itemtemplate></asp:TemplateField>
      <asp:TemplateField   HeaderText="<%$ resources: grdOwnerJoins.8bf55a0f-f062-4e10-b2de-92887fdebb4b.ColumnHeading %>"       SortExpression="CreateDate"  >
    <itemtemplate>
   <SalesLogix:DateTimePicker runat="server" ID="grdOwnerJoinscol3"  DisplayMode="AsText" DateTimeValue='<%#  dsOwnerJoins.getPropertyValue(Container.DataItem, "CreateDate")  %>'  CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdOwnerJoins.20fd039d-2aea-454b-b616-6a7e587f51cb.ColumnHeading %>"       SortExpression="ModifyDate"  >
    <itemtemplate>
   <SalesLogix:DateTimePicker runat="server" ID="grdOwnerJoinscol4"  DisplayMode="AsText" DateTimeValue='<%#  dsOwnerJoins.getPropertyValue(Container.DataItem, "ModifyDate")  %>'  CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdOwnerJoins.27fc5f1b-c053-4407-b89e-5ed47a2cb03b.ColumnHeading %>"       SortExpression="ModifyUser"  >
    <itemtemplate>
   <SalesLogix:SlxUserControl runat="server" ID="grdOwnerJoinscol5" DisplayMode="AsText" LookupResultValue='<%#  dsOwnerJoins.getPropertyValue(Container.DataItem, "ModifyUser")  %>' CssClass=""  />
   </itemtemplate></asp:TemplateField>
   <asp:ButtonField CommandName="Delete" 
  Text="<%$ resources: grdOwnerJoins.fff144fa-f5fa-4306-b10d-5f4e96afddc3.Text %>"                >
  	    </asp:ButtonField>
   </Columns>
    <PagerSettings Mode="NumericFirstLast" FirstPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=Start_16x16" LastPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=End_16x16" />
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

                  private int _grdOwnerJoinsdeleteColumnIndex = -2;
protected int grdOwnerJoinsDeleteColumnIndex
{
	get
	{
		if (_grdOwnerJoinsdeleteColumnIndex == -2)
		{
			int bias = (grdOwnerJoins.ExpandableRows) ? 1 : 0;
			_grdOwnerJoinsdeleteColumnIndex = -1;
			int colcount = 0;
			foreach (DataControlField col in grdOwnerJoins.Columns)
			{
				ButtonField btn = col as ButtonField;
				if (btn != null)
				{
					if (btn.CommandName == "Delete")
					{
						_grdOwnerJoinsdeleteColumnIndex = colcount + bias;
						break;
					}
				}
				colcount++;
			}
		}
		return _grdOwnerJoinsdeleteColumnIndex;
	}
}

protected void grdOwnerJoins_RowDataBound(object sender, GridViewRowEventArgs e)
{
	if (e.Row.RowType == DataControlRowType.DataRow)
	{
		if ((grdOwnerJoinsDeleteColumnIndex >= 0) && (grdOwnerJoinsDeleteColumnIndex < e.Row.Cells.Count))
		{
			TableCell cell = e.Row.Cells[grdOwnerJoinsDeleteColumnIndex];
			foreach (Control c in cell.Controls)
			{
				LinkButton btn = c as LinkButton;
				if (btn != null)
				{
					btn.Attributes.Add("onclick", "javascript: return confirm('" + Sage.Platform.WebPortal.PortalUtil.JavaScriptEncode(GetLocalResourceObject("grdOwnerJoins.fff144fa-f5fa-4306-b10d-5f4e96afddc3.ConfirmationMessage").ToString()) + "');");
					return;
				}
			}
		}
	}
}
   
protected void grdOwnerJoinspage_changing(object sender, GridViewPageEventArgs e)
{
 grdOwnerJoins.PageIndex = e.NewPageIndex;
 grdOwnerJoins.DataBind();
}
protected void grdOwnerJoins_Sorting(object sender, GridViewSortEventArgs e) { }
protected void grdOwnerJoins_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsOwnerJoins.SelectedIndex = rowIndex;
		object currentEntity = dsOwnerJoins.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
		string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
		    if (grdOwnerJoins.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdOwnerJoins.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsOwnerJoins.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
		                currentEntity = dsOwnerJoins.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }                 
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdOwnerJoins.DataKeys[rowIndex].Values)
            {
                if (val.Key.ToString() != "InstanceId")
                    if (string.IsNullOrEmpty(id))
                        id = val.Value.ToString();
                    else
                        id = string.Concat(id, ",", val.Value.ToString());
            }
        }		
		if (e.CommandName.Equals("Delete"))
		{

              Sage.Entity.Interfaces.IOwnerJoin childEntity = dsOwnerJoins.Current as Sage.Entity.Interfaces.IOwnerJoin;
        
			object[] objarray = new object[] { this.BindingSource.Current, childEntity};
		    Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.IUser>("User.RemoveUserTeamMembership", objarray);
		}
	}
    grdOwnerJoins_refresh();
}
	
	protected void grdOwnerJoins_refresh()
	{
		if (PageWorkItem != null) {
			Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
			if (refresher != null)
			{
				refresher.RefreshAll();
			}
			else
			{
				Response.Redirect(Request.Url.ToString());
			}
		}
	}
	
            protected void grdOwnerJoins_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		grdOwnerJoins.SelectedIndex = -1;
	}
	</script>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="UserTeamMembership_LTools" ToolbarLocation="left">
    <div class="slxlabel"><asp:Label runat="server" ID="QFLabel" Text="<%$ resources: QFLabel.Text %>"  ToolTip="<%$ resources: QFLabel.ToolTip %>"  />
</div>
  </SalesLogix:SmartPartToolsContainer>
 <SalesLogix:SmartPartToolsContainer runat="server" ID="UserTeamMembership_RTools" ToolbarLocation="right">
   <SalesLogix:LookupControl runat="server" ID="lueAddMember"  ToolTip="<%$ resources: lueAddMember.ToolTip %>" ButtonToolTip="<%$ resources: lueAddMember.ButtonToolTip %>" LookupEntityName="User" LookupEntityTypeName="Sage.Entity.Interfaces.IUser, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupDisplayMode="ButtonOnly" AutoPostBack="true" AddEmptyListItem="false" DialogTitle="<%$ resources: lueAddMember.LookupDialogTitle %>" LookupImageURL="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAddMember.LookupProperties.UserInfo.UserName.PropertyHeader %>" PropertyName="UserInfo.UserName" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAddMember.LookupProperties.UserInfo.Title.PropertyHeader %>" PropertyName="UserInfo.Title" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAddMember.LookupProperties.UserInfo.Department.PropertyHeader %>" PropertyName="UserInfo.Department" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAddMember.LookupProperties.UserInfo.Region.PropertyHeader %>" PropertyName="UserInfo.Region" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
<SalesLogix:LookupPreFilter PropertyName="Type" PropertyType="Sage.Entity.Interfaces.UserType" OperatorCode="!="
 FilterValue="'P'"
 ></SalesLogix:LookupPreFilter>
<SalesLogix:LookupPreFilter PropertyName="Id" PropertyType="" OperatorCode="!="
 FilterValue="'ADMIN       '"
 ></SalesLogix:LookupPreFilter>
<SalesLogix:LookupPreFilter PropertyName="Type" PropertyType="Sage.Entity.Interfaces.UserType" OperatorCode="!="
 FilterValue="'R'"
 ></SalesLogix:LookupPreFilter>
</LookupPreFilters>
</SalesLogix:LookupControl>
                 

  <SalesLogix:PageLink ID="lnkUserTeamMembershipHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="User_Detail_View_User_Team_Membership_Tab" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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
	get { return typeof(Sage.Entity.Interfaces.IUser); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsOwnerJoins;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsOwnerJoins
{ 
  get 
  {
    if (_dsOwnerJoins == null)
    {
             _dsOwnerJoins = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IOwnerJoin), 
	    EntityType                     ,"GetUserTeams", System.Reflection.MemberTypes.Method);
            	   	}
 	return _dsOwnerJoins;
  }
}

void dsOwnerJoins_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsOwnerJoins.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsOwnerJoins);
   }
}

 



 

protected override void OnAddEntityBindings() { 
       dsOwnerJoins.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("GetUserTeams()", grdOwnerJoins ));
   dsOwnerJoins.BindFieldNames = new String[] { "ChildOwnerId"," ParentOwnerId","Parent.User.UserInfo.UserName","Parent.User.Id","OwnerSecurityProfile.ProfileDescription","Child.Id"," Parent.Id"," OwnerSecurityProfile.Id","Id","CreateDate","ModifyDate","ModifyUser" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsOwnerJoins_OnCurrentEntitySet);
     
	       }
	   
protected void lueAddMember_ChangeAction(object sender, EventArgs e) {
Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
Object[] methodArgs = new Object[] { FormAdapter, e };
lib.Execute("UserTeamMembership.lueAddMember_OnChange", methodArgs);
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 lueAddMember.LookupResultValueChanged += new EventHandler(lueAddMember_ChangeAction);


}

protected override void OnFormBound()
{
ClientBindingMgr.RegisterBoundControl(lueAddMember);

if (dsOwnerJoins.SourceObject == null) { dsOwnerJoins.SourceObject = BindingSource.Current; }
if (dsOwnerJoins.SourceObject == null) { RegisterBindingsWithClient(dsOwnerJoins); }
dsOwnerJoins.Bind();



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
	get { return _formAdapter ?? (_formAdapter = new UserTeamMembershipAdapter(this)); }
}

public class UserTeamMembershipAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IUserTeamMembership
{
	public UserTeamMembershipAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.IDataGridControl _grdOwnerJoins;
	public Sage.Platform.Controls.IDataGridControl grdOwnerJoins
	{
		get { return FindControl(ref _grdOwnerJoins, "grdOwnerJoins"); }
	}
	private Sage.Platform.Controls.IDataSourceControl _dsOwnerJoins;
	public Sage.Platform.Controls.IDataSourceControl dsOwnerJoins
	{
		get { return FindControl(ref _dsOwnerJoins, "dsOwnerJoins"); }
	}
	private Sage.Platform.Controls.ILabelControl _QFLabel;
	public Sage.Platform.Controls.ILabelControl QFLabel
	{
		get { return FindControl(ref _QFLabel, "QFLabel"); }
	}
	private Sage.Platform.Controls.ILookupControl _lueAddMember;
	public Sage.Platform.Controls.ILookupControl lueAddMember
	{
		get { return FindControl(ref _lueAddMember, "lueAddMember"); }
	}

	public void lueAddMember_OnChange(System.EventArgs e)
	{
		Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
		Object[] methodArgs = new Object[] { this, e };
		lib.Execute("UserTeamMembership.lueAddMember_OnChange", methodArgs);
	}
}

</script>

<script type="text/javascript">
</script>
