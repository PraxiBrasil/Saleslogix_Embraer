<%@ Control Language="C#" ClassName="OpportunityClosedLost" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
         <col width="100%" />
     <tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="curActualAmount_lbl" AssociatedControlID="curActualAmount" runat="server" Text="<%$ resources: curActualAmount.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol currency"  >
    <SalesLogix:Currency runat="server" ID="curActualAmount" ExchangeRateType="BaseRate"
DisplayCurrencyCode="false"  />
</div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtpActualClose_lbl" AssociatedControlID="dtpActualClose" runat="server" Text="<%$ resources: dtpActualClose.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtpActualClose" ButtonToolTip="<%$ resources: dtpActualClose.ButtonToolTip %>" DisplayTime="false" Timeless="true" />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklReason_lbl" AssociatedControlID="pklReason" runat="server" Text="<%$ resources: pklReason.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklReason" PickListId="kSYST0000361" PickListName="Reason Lost" AllowMultiples="true" NoneEditable="true"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtNotes_lbl" AssociatedControlID="txtNotes" runat="server" Text="<%$ resources: txtNotes.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtNotes" Rows="4"
TextMode="MultiLine" Columns="40"
MultiLineMaxLength="2147483647" onkeyup="doTextBoxKeyUp(this);" onpaste="doTextBoxPaste(this);"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
<SalesLogix:LookupControl runat="server" ID="lueCompetitorLoss" ButtonToolTip="<%$ resources: lueCompetitorLoss.ButtonToolTip %>" LookupEntityName="ICompetitor" LookupEntityTypeName="Sage.Entity.Interfaces.ICompetitor, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupDisplayMode="ButtonOnly" AutoPostBack="true" LookupImageURL="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueCompetitorLoss.LookupProperties.CompetitorName.PropertyHeader %>" PropertyName="CompetitorName" PropertyType="" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueCompetitorLoss.LookupProperties.Rating.PropertyHeader %>" PropertyName="Rating" PropertyType="" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="True"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueCompetitorLoss.LookupProperties.Strengths.PropertyHeader %>" PropertyName="Strengths" PropertyType="" PropertyFormat="None"  UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>

      </td>
      </tr>
<tr>
            <td  >
<SalesLogix:SlxGridView runat="server" ID="grdOppCompetitors" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
EmptyTableRowText="<%$ resources: grdOppCompetitors.EmptyTableRowText %>"  ExpandableRows="True" ResizableColumns="True" >
<Columns>
   <asp:BoundField DataField="Competitor.CompetitorName" 
      HeaderText="<%$ resources: grdOppCompetitors.55650761-543f-4a09-9a20-78fdaa1e50d9.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Rating" 
      HeaderText="<%$ resources: grdOppCompetitors.df664a77-7cff-4ddb-83f3-b1c60f157bf6.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Strengths" 
      HeaderText="<%$ resources: grdOppCompetitors.bf54f9d9-9fdb-45ca-b70c-d119b174e015.ColumnHeading %>"          >
      </asp:BoundField>
 </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">


</script>

      </td>
      </tr>
<tr>
            <td  >
<asp:Panel runat="server" ID="QFControlsList" CssClass="controlslist qfActionContainer"
>
   <asp:Button runat="server" ID="cmdOKClosedLost"
 Text="<%$ resources: cmdOKClosedLost.Caption %>" CssClass="slxbutton"  />
   
   <asp:Button runat="server" ID="cmdCancel"
 Text="<%$ resources: cmdCancel.Caption %>" CssClass="slxbutton"  />
 
</asp:Panel>
      </td>
      </tr>
<tr>
            <td></td>
      </tr>
</table>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="OpportunityClosedLost_RTools" ToolbarLocation="right">
  <SalesLogix:PageLink ID="lnkOpportunityClosedLostHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="oppclose.htm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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
	get { return typeof(Sage.Entity.Interfaces.IOpportunity); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dtsOppCompetitors;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dtsOppCompetitors
{ 
  get 
  {
    if (_dtsOppCompetitors == null)
    {
             _dtsOppCompetitors = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IOpportunityCompetitor), 
	    EntityType                     ,"GetClosedWonLostOppCompetitors", System.Reflection.MemberTypes.Method);
            	   	}
 	return _dtsOppCompetitors;
  }
}

void dtsOppCompetitors_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dtsOppCompetitors.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dtsOppCompetitors);
   }
}

 



 

protected override void OnAddEntityBindings() { 
                    // curActualAmount.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding curActualAmountTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ActualAmount", curActualAmount, "Text");
        BindingSource.Bindings.Add(curActualAmountTextBinding);
                       // dtpActualClose.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpActualCloseDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ActualClose", dtpActualClose, "DateTimeValue");
        BindingSource.Bindings.Add(dtpActualCloseDateTimeValueBinding);
                       // pklReason.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklReasonPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Reason", pklReason, "PickListValue");
        BindingSource.Bindings.Add(pklReasonPickListValueBinding);
                       // txtNotes.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtNotesTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Notes", txtNotes, "Text");
        BindingSource.Bindings.Add(txtNotesTextBinding);
                         dtsOppCompetitors.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("GetClosedWonLostOppCompetitors()", grdOppCompetitors ));
   dtsOppCompetitors.BindFieldNames = new String[] { "OpportunityId","CompetitorId","Competitor.CompetitorName","Rating","Strengths" };
        
        
        
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dtsOppCompetitors_OnCurrentEntitySet);
     
}
	   	   	   	   	   	   	   	   	   
protected void lueCompetitorLoss_ChangeAction(object sender, EventArgs e) {
Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
Object[] methodArgs = new Object[] { FormAdapter, e };
lib.Execute("OpportunityClosedLost.lueCompetitorLoss_OnChange", methodArgs);
}
protected void cmdOKClosedLost_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IOpportunity _entity = BindingSource.Current as Sage.Entity.Interfaces.IOpportunity;
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
protected void cmdCancel_ClickAction(object sender, EventArgs e) {
Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
Object[] methodArgs = new Object[] { FormAdapter, e };
lib.Execute("OpportunityClosedLost.cmdCancel_OnClick", methodArgs);
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 lueCompetitorLoss.LookupResultValueChanged += new EventHandler(lueCompetitorLoss_ChangeAction);
cmdOKClosedLost.Click += new EventHandler(cmdOKClosedLost_ClickAction);
cmdOKClosedLost.Click += new EventHandler(DialogService.CloseEventHappened);
cmdOKClosedLost.Click += new EventHandler(Refresh);
cmdCancel.Click += new EventHandler(cmdCancel_ClickAction);
cmdCancel.Click += new EventHandler(DialogService.CloseEventHappened);


}

protected override void OnFormBound()
{
ClientBindingMgr.RegisterSaveButton(cmdOKClosedLost);

ScriptManager.RegisterStartupScript(Page, GetType(), "cleanupcontainer", "jQuery(\".controlslist > div:empty\").remove();", true);
if (dtsOppCompetitors.SourceObject == null) { dtsOppCompetitors.SourceObject = BindingSource.Current; }
if (dtsOppCompetitors.SourceObject == null) { RegisterBindingsWithClient(dtsOppCompetitors); }
dtsOppCompetitors.Bind();

ClientBindingMgr.RegisterDialogCancelButton(cmdCancel);


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
	get { return _formAdapter ?? (_formAdapter = new OpportunityClosedLostAdapter(this)); }
}

public class OpportunityClosedLostAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IOpportunityClosedLost
{
	public OpportunityClosedLostAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.ICurrencyControl _curActualAmount;
	public Sage.Platform.Controls.ICurrencyControl curActualAmount
	{
		get { return FindControl(ref _curActualAmount, "curActualAmount"); }
	}
	private Sage.Platform.Controls.IDateTimePickerControl _dtpActualClose;
	public Sage.Platform.Controls.IDateTimePickerControl dtpActualClose
	{
		get { return FindControl(ref _dtpActualClose, "dtpActualClose"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklReason;
	public Sage.Platform.Controls.IPickListControl pklReason
	{
		get { return FindControl(ref _pklReason, "pklReason"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtNotes;
	public Sage.Platform.Controls.ITextBoxControl txtNotes
	{
		get { return FindControl(ref _txtNotes, "txtNotes"); }
	}
	private Sage.Platform.Controls.ILookupControl _lueCompetitorLoss;
	public Sage.Platform.Controls.ILookupControl lueCompetitorLoss
	{
		get { return FindControl(ref _lueCompetitorLoss, "lueCompetitorLoss"); }
	}
	private Sage.Platform.Controls.IDataGridControl _grdOppCompetitors;
	public Sage.Platform.Controls.IDataGridControl grdOppCompetitors
	{
		get { return FindControl(ref _grdOppCompetitors, "grdOppCompetitors"); }
	}
	private Sage.Platform.Controls.IControlsListControl _QFControlsList;
	public Sage.Platform.Controls.IControlsListControl QFControlsList
	{
		get { return FindControl(ref _QFControlsList, "QFControlsList"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdOKClosedLost;
	public Sage.Platform.Controls.IButtonControl cmdOKClosedLost
	{
		get { return FindControl(ref _cmdOKClosedLost, "cmdOKClosedLost"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdCancel;
	public Sage.Platform.Controls.IButtonControl cmdCancel
	{
		get { return FindControl(ref _cmdCancel, "cmdCancel"); }
	}
	private Sage.Platform.Controls.IDataSourceControl _dtsOppCompetitors;
	public Sage.Platform.Controls.IDataSourceControl dtsOppCompetitors
	{
		get { return FindControl(ref _dtsOppCompetitors, "dtsOppCompetitors"); }
	}

	public void lueCompetitorLoss_OnChange(System.EventArgs e)
	{
		Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
		Object[] methodArgs = new Object[] { this, e };
		lib.Execute("OpportunityClosedLost.lueCompetitorLoss_OnChange", methodArgs);
	}
	public void cmdCancel_OnClick(System.EventArgs e)
	{
		Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
		Object[] methodArgs = new Object[] { this, e };
		lib.Execute("OpportunityClosedLost.cmdCancel_OnClick", methodArgs);
	}
}

</script>

<script type="text/javascript">
</script>
