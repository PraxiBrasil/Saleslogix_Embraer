<%@ Control Language="C#" ClassName="Products" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="QFDataGrid" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 AllowPaging="true" PageSize="20" OnPageIndexChanging="QFDataGridpage_changing" EmptyTableRowText="<%$ resources: QFDataGrid.EmptyTableRowText %>"  ExpandableRows="True" ResizableColumns="True"  OnRowCommand="QFDataGrid_RowCommand" 
 DataKeyNames="InstanceId,Id" 
 AllowSorting="true" OnSorting="QFDataGrid_Sorting"  OnRowEditing="QFDataGrid_RowEditing"  OnRowDeleting="QFDataGrid_RowDeleting" OnRowDataBound="QFDataGrid_RowDataBound"  ShowSortIcon="true" >
<Columns>
   <asp:TemplateField   HeaderText="<%$ resources: QFDataGrid.32233c89-e288-45d1-b83a-05b85e253399.ColumnHeading %>"       SortExpression="Product.Name"  >
    <itemtemplate>
      <SalesLogix:PageLink runat="server" NavigateUrl="Product"
   EntityId='<%# dtsProducts.getPropertyValue(Container.DataItem, "Product.Id") %>'     Text='<%# dtsProducts.getPropertyValue(Container.DataItem, "Product.Name") %>' 
         LinkType="EntityAlias"></SalesLogix:PageLink>
     </itemtemplate></asp:TemplateField>
      <asp:BoundField DataField="Product.ActualId" 
      HeaderText="<%$ resources: QFDataGrid.ca3e71b2-710d-442a-911d-f82896281b67.ColumnHeading %>"       SortExpression="Product.ActualId"    >
      </asp:BoundField>
    <asp:BoundField DataField="Quantity" 
      HeaderText="<%$ resources: QFDataGrid.58b2bcc5-6405-4089-892e-858acf84ba5d.ColumnHeading %>"       SortExpression="Quantity"    >
      </asp:BoundField>
    <asp:BoundField DataField="Product.Status" 
      HeaderText="<%$ resources: QFDataGrid.485b1beb-2bce-4847-a5b7-139e254fac4b.ColumnHeading %>"       SortExpression="Product.Status"    >
      </asp:BoundField>
    <asp:BoundField DataField="Product.Family" 
      HeaderText="<%$ resources: QFDataGrid.7f49f584-ad1e-4b70-8ff3-126a1764bdad.ColumnHeading %>"       SortExpression="Product.Family"    >
      </asp:BoundField>
  <asp:ButtonField CommandName="Edit" 
  Text="<%$ resources: QFDataGrid.a494805d-0dd5-42f1-be87-d1434402dca4.Text %>"               >
  	    </asp:ButtonField>
     <asp:ButtonField CommandName="Delete" 
  Text="<%$ resources: QFDataGrid.9639f9d6-2624-40ff-ac9c-bdafd2a024d5.Text %>"                >
  	    </asp:ButtonField>
   </Columns>
    <PagerSettings Mode="NumericFirstLast" FirstPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=Start_16x16" LastPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=End_16x16" />
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

                     private int _QFDataGriddeleteColumnIndex = -2;
protected int QFDataGridDeleteColumnIndex
{
	get
	{
		if (_QFDataGriddeleteColumnIndex == -2)
		{
			int bias = (QFDataGrid.ExpandableRows) ? 1 : 0;
			_QFDataGriddeleteColumnIndex = -1;
			int colcount = 0;
			foreach (DataControlField col in QFDataGrid.Columns)
			{
				ButtonField btn = col as ButtonField;
				if (btn != null)
				{
					if (btn.CommandName == "Delete")
					{
						_QFDataGriddeleteColumnIndex = colcount + bias;
						break;
					}
				}
				colcount++;
			}
		}
		return _QFDataGriddeleteColumnIndex;
	}
}

protected void QFDataGrid_RowDataBound(object sender, GridViewRowEventArgs e)
{
	if (e.Row.RowType == DataControlRowType.DataRow)
	{
		if ((QFDataGridDeleteColumnIndex >= 0) && (QFDataGridDeleteColumnIndex < e.Row.Cells.Count))
		{
			TableCell cell = e.Row.Cells[QFDataGridDeleteColumnIndex];
			foreach (Control c in cell.Controls)
			{
				LinkButton btn = c as LinkButton;
				if (btn != null)
				{
					btn.Attributes.Add("onclick", "javascript: return confirm('" + Sage.Platform.WebPortal.PortalUtil.JavaScriptEncode(GetLocalResourceObject("QFDataGrid.9639f9d6-2624-40ff-ac9c-bdafd2a024d5.ConfirmationMessage").ToString()) + "');");
					return;
				}
			}
		}
	}
}
   
protected void QFDataGridpage_changing(object sender, GridViewPageEventArgs e)
{
 QFDataGrid.PageIndex = e.NewPageIndex;
 QFDataGrid.DataBind();
}
protected void QFDataGrid_Sorting(object sender, GridViewSortEventArgs e) { }
protected void QFDataGrid_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dtsProducts.SelectedIndex = rowIndex;
		object currentEntity = dtsProducts.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
		string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
		    if (QFDataGrid.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in QFDataGrid.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dtsProducts.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
		                currentEntity = dtsProducts.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }                 
            }
        }
        else
        {
            foreach (DictionaryEntry val in QFDataGrid.DataKeys[rowIndex].Values)
            {
                if (val.Key.ToString() != "InstanceId")
                {
                    id = val.Value.ToString();
                }
            }
        }		
        if (e.CommandName.Equals("Edit"))
        {
            if (DialogService != null)
            {
				// QFDataGrid
							DialogService.SetSpecs(200, 400, "AddEditPackage", GetLocalResourceObject("daac1067-856f-4f0d-9feb-996a4bb88438.DialogTitleOverride").ToString() );
			                DialogService.EntityType = typeof(Sage.Entity.Interfaces.IPackageProduct );
                DialogService.EntityID = id;
                DialogService.ShowDialog();
            }
        }
		if (e.CommandName.Equals("Delete"))
		{
            Sage.Entity.Interfaces.IPackage mainentity = this.BindingSource.Current as Sage.Entity.Interfaces.IPackage;
			if (mainentity != null)
			{
			    Sage.Entity.Interfaces.IPackageProduct childEntity = null;
			    if((currentEntity != null) && (currentEntity is Sage.Entity.Interfaces.IPackageProduct))
			    {
			        childEntity = (Sage.Entity.Interfaces.IPackageProduct)currentEntity;    
			    }
			    else if (id != null)
			    {
                    childEntity = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.IPackageProduct>(id);
            }
				if(childEntity != null)
				{
			         mainentity.PackageProducts.Remove(childEntity);
					 mainentity.Save();
					 if((childEntity.PersistentState & Sage.Platform.Orm.Interfaces.PersistentState.New) <= 0)
					 {
					     childEntity.Delete();
					 }
					 dtsProducts.SelectedIndex = -1;
			    }
		    }
		}
	}
    QFDataGrid_refresh();
}
	
	protected void QFDataGrid_refresh()
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
	
    	protected void QFDataGrid_RowEditing(object sender, GridViewEditEventArgs e)
	{
		QFDataGrid.SelectedIndex = e.NewEditIndex;
	}
            protected void QFDataGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		QFDataGrid.SelectedIndex = -1;
	}
	</script>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="Products_RTools" ToolbarLocation="right">
   <SalesLogix:LookupControl runat="server" ID="lueProducts"  ToolTip="<%$ resources: lueProducts.ToolTip %>" LookupEntityName="Product" LookupEntityTypeName="Sage.Entity.Interfaces.IProduct, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupDisplayMode="ButtonOnly" DropDownDisplayProperty="Name" AutoPostBack="true" LookupImageURL="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueProducts.LookupProperties.Name.PropertyHeader %>" PropertyName="Name" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueProducts.LookupProperties.ActualId.PropertyHeader %>" PropertyName="ActualId" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueProducts.LookupProperties.Status.PropertyHeader %>" PropertyName="Status" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueProducts.LookupProperties.Family.PropertyHeader %>" PropertyName="Family" PropertyType="System.String" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
                 

  <SalesLogix:PageLink ID="lnkProductsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="packageproductstab" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dtsProducts;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dtsProducts
{ 
  get 
  {
    if (_dtsProducts == null)
    {
             _dtsProducts = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IPackageProduct), 
	    EntityType              ,"PackageProducts", System.Reflection.MemberTypes.Property);
                   _dtsProducts.UseSmartQuery = true;
      	   	}
 	return _dtsProducts;
  }
}

void dtsProducts_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dtsProducts.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dtsProducts);
   }
}

 



 

protected override void OnAddEntityBindings() { 
       dtsProducts.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("PackageProducts", QFDataGrid ));
   dtsProducts.BindFieldNames = new String[] { "Id","Product.Name","Product.Id","Product.ActualId","Quantity","Product.Status","Product.Family" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dtsProducts_OnCurrentEntitySet);
     
    }
	   
protected void lueProducts_ChangeAction(object sender, EventArgs e) {
    if (lueProducts.LookupResultValue != null)
    {
        Sage.Entity.Interfaces.IPackage parentEntity = BindingSource.Current as Sage.Entity.Interfaces.IPackage;
        Sage.Entity.Interfaces.IProduct relatedEntity = lueProducts.LookupResultValue as Sage.Entity.Interfaces.IProduct;
        Sage.Platform.WebPortal.EntityPage page = (Sage.Platform.WebPortal.EntityPage)Page;
		// check for duplicates
        bool found = false;
        if ((parentEntity != null) && (relatedEntity != null))
        {
		        Sage.Entity.Interfaces.IPackageProduct relationshipEntity = Sage.Platform.EntityFactory.Create<Sage.Entity.Interfaces.IPackageProduct>();
		if (!found)
        {
            relationshipEntity.Package = parentEntity;
            relationshipEntity.Product = relatedEntity;
            parentEntity.PackageProducts.Add(relationshipEntity);
            dtsProducts.SelectedMember = relationshipEntity;
            if (page.ModeId.ToUpper() != "INSERT")
            {
				parentEntity.Save();
            }
		}
            if (DialogService != null)
            {
				// InsertAssociationActionItem
							DialogService.SetSpecs(200, 400, "AddEditPackage", GetLocalResourceObject("34b9e5c6-928f-4e00-9e05-222d42f5abb9.DialogTitleOverride").ToString() );
			                DialogService.EntityType = typeof(Sage.Entity.Interfaces.IPackageProduct); 
                string id = string.Empty;
	
		if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(relationshipEntity))
		{
			id = relationshipEntity.InstanceId.ToString();
                        Sage.Platform.ChangeManagement.ChangeManagementEntityFactory.RegisterInstance(relationshipEntity, relationshipEntity.InstanceId);			
		}
		else
                	id = relationshipEntity.Id.ToString();
                DialogService.EntityID = id;
                DialogService.ShowDialog();
            }
        }
    }

}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 lueProducts.LookupResultValueChanged += new EventHandler(lueProducts_ChangeAction);


}

protected override void OnFormBound()
{
ClientBindingMgr.RegisterBoundControl(lueProducts);

if (dtsProducts.SourceObject == null) { dtsProducts.SourceObject = BindingSource.Current; }
if (dtsProducts.SourceObject == null) { RegisterBindingsWithClient(dtsProducts); }
dtsProducts.Bind();



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
	get { return _formAdapter ?? (_formAdapter = new ProductsAdapter(this)); }
}

public class ProductsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IProducts
{
	public ProductsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.IDataGridControl _QFDataGrid;
	public Sage.Platform.Controls.IDataGridControl QFDataGrid
	{
		get { return FindControl(ref _QFDataGrid, "QFDataGrid"); }
	}
	private Sage.Platform.Controls.IDataSourceControl _dtsProducts;
	public Sage.Platform.Controls.IDataSourceControl dtsProducts
	{
		get { return FindControl(ref _dtsProducts, "dtsProducts"); }
	}
	private Sage.Platform.Controls.ILookupControl _lueProducts;
	public Sage.Platform.Controls.ILookupControl lueProducts
	{
		get { return FindControl(ref _lueProducts, "lueProducts"); }
	}

}

</script>

<script type="text/javascript">
</script>
