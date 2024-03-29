<%@ Control Language="C#" ClassName="DepartmentMembership" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdDepartments" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 AllowPaging="true" PageSize="20" OnPageIndexChanging="grdDepartmentspage_changing" EmptyTableRowText="<%$ resources: grdDepartments.EmptyTableRowText %>"  ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdDepartments_RowCommand" 
 DataKeyNames="InstanceId,ChildOwnerId, ParentOwnerId" 
 AllowSorting="true" OnSorting="grdDepartments_Sorting"  OnRowDeleting="grdDepartments_RowDeleting" OnRowDataBound="grdDepartments_RowDataBound"  ShowSortIcon="true" >
<Columns>
   <asp:TemplateField   HeaderText="<%$ resources: grdDepartments.5e896acf-eda1-4452-a6bd-2797ed21c11a.ColumnHeading %>"       SortExpression="Parent.OwnerDescription"  >
    <itemtemplate>
      <SalesLogix:PageLink runat="server" NavigateUrl="Department"
   EntityId='<%# dsDepartments.getPropertyValue(Container.DataItem, "Parent.Id") %>'     Text='<%# dsDepartments.getPropertyValue(Container.DataItem, "Parent.OwnerDescription") %>' 
         LinkType="EntityAlias"></SalesLogix:PageLink>
     </itemtemplate></asp:TemplateField>
      <asp:TemplateField   HeaderText="<%$ resources: grdDepartments.fb3a028d-e434-448b-b55b-038122c20dfb.ColumnHeading %>"       SortExpression="CreateDate"  >
    <itemtemplate>
   <SalesLogix:DateTimePicker runat="server" ID="grdDepartmentscol2"  DisplayMode="AsText" DateTimeValue='<%#  dsDepartments.getPropertyValue(Container.DataItem, "CreateDate")  %>'  CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdDepartments.5cd1ffb4-aee7-43e2-ba65-bcd4deedef09.ColumnHeading %>"       SortExpression="ModifyDate"  >
    <itemtemplate>
   <SalesLogix:DateTimePicker runat="server" ID="grdDepartmentscol3"  DisplayMode="AsText" DateTimeValue='<%#  dsDepartments.getPropertyValue(Container.DataItem, "ModifyDate")  %>'  CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdDepartments.7fdbc166-20dd-45ae-bb61-e6fc7e77c947.ColumnHeading %>"       SortExpression="ModifyUser"  >
    <itemtemplate>
   <SalesLogix:SlxUserControl runat="server" ID="grdDepartmentscol4" DisplayMode="AsText" LookupResultValue='<%#  dsDepartments.getPropertyValue(Container.DataItem, "ModifyUser")  %>' CssClass=""  />
   </itemtemplate></asp:TemplateField>
   <asp:ButtonField CommandName="Delete" 
  Text="<%$ resources: grdDepartments.bc34b828-085c-4666-a68e-3e72a74d9e7d.Text %>"                >
  	    </asp:ButtonField>
   </Columns>
    <PagerSettings Mode="NumericFirstLast" FirstPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=Start_16x16" LastPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=End_16x16" />
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

               private int _grdDepartmentsdeleteColumnIndex = -2;
protected int grdDepartmentsDeleteColumnIndex
{
	get
	{
		if (_grdDepartmentsdeleteColumnIndex == -2)
		{
			int bias = (grdDepartments.ExpandableRows) ? 1 : 0;
			_grdDepartmentsdeleteColumnIndex = -1;
			int colcount = 0;
			foreach (DataControlField col in grdDepartments.Columns)
			{
				ButtonField btn = col as ButtonField;
				if (btn != null)
				{
					if (btn.CommandName == "Delete")
					{
						_grdDepartmentsdeleteColumnIndex = colcount + bias;
						break;
					}
				}
				colcount++;
			}
		}
		return _grdDepartmentsdeleteColumnIndex;
	}
}

protected void grdDepartments_RowDataBound(object sender, GridViewRowEventArgs e)
{
	if (e.Row.RowType == DataControlRowType.DataRow)
	{
		if ((grdDepartmentsDeleteColumnIndex >= 0) && (grdDepartmentsDeleteColumnIndex < e.Row.Cells.Count))
		{
			TableCell cell = e.Row.Cells[grdDepartmentsDeleteColumnIndex];
			foreach (Control c in cell.Controls)
			{
				LinkButton btn = c as LinkButton;
				if (btn != null)
				{
					btn.Attributes.Add("onclick", "javascript: return confirm('" + Sage.Platform.WebPortal.PortalUtil.JavaScriptEncode(GetLocalResourceObject("grdDepartments.bc34b828-085c-4666-a68e-3e72a74d9e7d.ConfirmationMessage").ToString()) + "');");
					return;
				}
			}
		}
	}
}
   
protected void grdDepartmentspage_changing(object sender, GridViewPageEventArgs e)
{
 grdDepartments.PageIndex = e.NewPageIndex;
 grdDepartments.DataBind();
}
protected void grdDepartments_Sorting(object sender, GridViewSortEventArgs e) { }
protected void grdDepartments_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsDepartments.SelectedIndex = rowIndex;
		object currentEntity = dsDepartments.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
		string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
		    if (grdDepartments.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdDepartments.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsDepartments.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
		                currentEntity = dsDepartments.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }                 
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdDepartments.DataKeys[rowIndex].Values)
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

              Sage.Entity.Interfaces.IOwnerJoin childEntity = dsDepartments.Current as Sage.Entity.Interfaces.IOwnerJoin;
        
			object[] objarray = new object[] { this.BindingSource.Current, childEntity};
		    Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.IUser>("User.RemoveFromDepartment", objarray);
		}
	}
    grdDepartments_refresh();
}
	
	protected void grdDepartments_refresh()
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
	
            protected void grdDepartments_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		grdDepartments.SelectedIndex = -1;
	}
	</script>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="DepartmentMembership_LTools" ToolbarLocation="left">
    <div class="slxlabel"><asp:Label runat="server" ID="QFLabel" Text="<%$ resources: QFLabel.Text %>"  ToolTip="<%$ resources: QFLabel.ToolTip %>"  />
</div>
  </SalesLogix:SmartPartToolsContainer>
 <SalesLogix:SmartPartToolsContainer runat="server" ID="DepartmentMembership_RTools" ToolbarLocation="right">
   <SalesLogix:LookupControl runat="server" ID="lueAddDepartment" ButtonToolTip="<%$ resources: lueAddDepartment.ButtonToolTip %>" LookupEntityName="Owner" LookupEntityTypeName="Sage.Entity.Interfaces.IOwner, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupDisplayMode="ButtonOnly" AutoPostBack="true" DialogTitle="<%$ resources: lueAddDepartment.LookupDialogTitle %>" LookupImageURL="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueAddDepartment.LookupProperties.OwnerDescription.PropertyHeader %>" PropertyName="OwnerDescription" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
<SalesLogix:LookupPreFilter PropertyName="Type" PropertyType="Sage.Entity.Interfaces.OwnerType" OperatorCode="="
 FilterValue="'D'"
 ></SalesLogix:LookupPreFilter>
<SalesLogix:LookupPreFilter PropertyName="Id" PropertyType="System.String" OperatorCode="!="
 FilterValue="DEPT00000000"
 ></SalesLogix:LookupPreFilter>
</LookupPreFilters>
</SalesLogix:LookupControl>
                 

  <SalesLogix:PageLink ID="lnkDepartmentMembershipHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="User_Detail_View_Department_Members_Tab" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsDepartments;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsDepartments
{ 
  get 
  {
    if (_dsDepartments == null)
    {
             _dsDepartments = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IOwnerJoin), 
	    EntityType                     ,"GetDepartmentMembership", System.Reflection.MemberTypes.Method);
            	   	}
 	return _dsDepartments;
  }
}

void dsDepartments_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsDepartments.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsDepartments);
   }
}

 



 

protected override void OnAddEntityBindings() { 
       dsDepartments.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("GetDepartmentMembership()", grdDepartments ));
   dsDepartments.BindFieldNames = new String[] { "ChildOwnerId"," ParentOwnerId","Parent.OwnerDescription","Parent.Id","CreateDate","ModifyDate","ModifyUser" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsDepartments_OnCurrentEntitySet);
     
	       }
	   
protected void lueAddDepartment_ChangeAction(object sender, EventArgs e) {
Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
Object[] methodArgs = new Object[] { FormAdapter, e };
lib.Execute("DepartmentMembership.lueAddDepartment_OnChange", methodArgs);
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 lueAddDepartment.LookupResultValueChanged += new EventHandler(lueAddDepartment_ChangeAction);


}

protected override void OnFormBound()
{
ClientBindingMgr.RegisterBoundControl(lueAddDepartment);

if (dsDepartments.SourceObject == null) { dsDepartments.SourceObject = BindingSource.Current; }
if (dsDepartments.SourceObject == null) { RegisterBindingsWithClient(dsDepartments); }
dsDepartments.Bind();



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
	get { return _formAdapter ?? (_formAdapter = new DepartmentMembershipAdapter(this)); }
}

public class DepartmentMembershipAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IDepartmentMembership
{
	public DepartmentMembershipAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.IDataGridControl _grdDepartments;
	public Sage.Platform.Controls.IDataGridControl grdDepartments
	{
		get { return FindControl(ref _grdDepartments, "grdDepartments"); }
	}
	private Sage.Platform.Controls.IDataSourceControl _dsDepartments;
	public Sage.Platform.Controls.IDataSourceControl dsDepartments
	{
		get { return FindControl(ref _dsDepartments, "dsDepartments"); }
	}
	private Sage.Platform.Controls.ILabelControl _QFLabel;
	public Sage.Platform.Controls.ILabelControl QFLabel
	{
		get { return FindControl(ref _QFLabel, "QFLabel"); }
	}
	private Sage.Platform.Controls.ILookupControl _lueAddDepartment;
	public Sage.Platform.Controls.ILookupControl lueAddDepartment
	{
		get { return FindControl(ref _lueAddDepartment, "lueAddDepartment"); }
	}

	public void lueAddDepartment_OnChange(System.EventArgs e)
	{
		Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
		Object[] methodArgs = new Object[] { this, e };
		lib.Execute("DepartmentMembership.lueAddDepartment_OnChange", methodArgs);
	}
}

</script>

<script type="text/javascript">
</script>
