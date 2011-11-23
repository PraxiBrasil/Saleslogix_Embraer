<%@ Control Language="C#" ClassName="InsertCampaign" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
<table border="0" cellpadding="1" cellspacing="0" class="formtable formtable_fixed">
         <col width="50%" />
            <col width="30px" />
            <col width="50%" />
     <tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtCampaignName_lbl" AssociatedControlID="txtCampaignName" runat="server" Text="<%$ resources: txtCampaignName.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtCampaignName" Rows="1"
 />
  </div>

      </td>
                <td></td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="cboStatus_lbl" AssociatedControlID="cboStatus" runat="server" Text="<%$ resources: cboStatus.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol select"  > 
<asp:ListBox runat="server" ID="cboStatus"  SelectionMode="Single" Rows="1"  >
<asp:ListItem  Selected="true" Text="<%$ resources: cboStatus_item0.Text %>"
Value="Setup" />
<asp:ListItem  Text="<%$ resources: cboStatus_item1.Text %>"
Value="Active" />
<asp:ListItem  Text="<%$ resources: cboStatus_item2.Text %>"
Value="Inactive" />
</asp:ListBox>
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtDescription_lbl" AssociatedControlID="txtDescription" runat="server" Text="<%$ resources: txtDescription.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtDescription" Rows="1"
 />
  </div>

      </td>
                <td></td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtCode_lbl" AssociatedControlID="txtCode" runat="server" Text="<%$ resources: txtCode.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtCode" Rows="1"
 />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtObjective_lbl" AssociatedControlID="txtObjective" runat="server" Text="<%$ resources: txtObjective.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtObjective" Rows="1"
 />
  </div>

      </td>
                <td></td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dteStartDate_lbl" AssociatedControlID="dteStartDate" runat="server" Text="<%$ resources: dteStartDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dteStartDate" DisplayTime="false" />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtCallToAction_lbl" AssociatedControlID="txtCallToAction" runat="server" Text="<%$ resources: txtCallToAction.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtCallToAction" Rows="1"
 />
  </div>

      </td>
                <td></td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dteEndDate_lbl" AssociatedControlID="dteEndDate" runat="server" Text="<%$ resources: dteEndDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dteEndDate" DisplayTime="false" />
  </div>

      </td>
      </tr>
<tr>
            <td  >
<asp:Panel runat="server" ID="QFControlsList" CssClass="controlslist "
>
   <div class=" lbl alignleft" >
   <asp:Label ID="txtLeadSources_lbl" AssociatedControlID="txtLeadSources" runat="server" Text="<%$ resources: txtLeadSources.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtLeadSources" Rows="1"
 />
  </div>

   <asp:ImageButton runat="server" ID="cmdLeadSource"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Find_16x16"  />
 
</asp:Panel>
      </td>
                <td></td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lueManager_lbl" AssociatedControlID="lueManager" runat="server" Text="<%$ resources: lueManager.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol user"  > 
    <SalesLogix:SlxUserControl runat="server" ID="lueManager" ButtonToolTip="<%$ resources: lueManager.ButtonToolTip %>"  />
  </div>

      </td>
      </tr>
<tr>
            <td></td>
                <td></td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lveOwner_lbl" AssociatedControlID="lveOwner" runat="server" Text="<%$ resources: lveOwner.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol owner"  > 
<SalesLogix:OwnerControl runat="server" ID="lveOwner" ButtonToolTip="<%$ resources: lveOwner.ButtonToolTip %>" Types="$qfcontrol.Types"  />
  </div>

      </td>
      </tr>
</table>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="InsertCampaign_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="cmdSave"
 AlternateText="<%$ resources: cmdSave.Caption %>"  ToolTip="<%$ resources: cmdSave.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
    <asp:ImageButton runat="server" ID="cmdSaveNew"
 AlternateText="<%$ resources: cmdSaveNew.Caption %>"  ToolTip="<%$ resources: cmdSaveNew.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_New16x16"  />
   
  <SalesLogix:PageLink ID="lnkInsertCampaignHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="campaignaddnew.htm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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
	get { return typeof(Sage.Entity.Interfaces.ICampaign); }
}

 

protected override void OnAddEntityBindings() { 
                    // txtCampaignName.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtCampaignNameTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CampaignName", txtCampaignName, "Text");
        BindingSource.Bindings.Add(txtCampaignNameTextBinding);
                       // cboStatus.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding cboStatusTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Status", cboStatus, "Text");
        cboStatusTextBinding.IgnoreFLSDisabling = true;
        
        BindingSource.Bindings.Add(cboStatusTextBinding);
                       // txtDescription.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtDescriptionTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Description", txtDescription, "Text");
        BindingSource.Bindings.Add(txtDescriptionTextBinding);
                       // txtCode.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtCodeTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CampaignCode", txtCode, "Text");
        BindingSource.Bindings.Add(txtCodeTextBinding);
                       // txtObjective.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtObjectiveTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Objectives", txtObjective, "Text");
        BindingSource.Bindings.Add(txtObjectiveTextBinding);
                       // dteStartDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dteStartDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("StartDate", dteStartDate, "DateTimeValue");
        BindingSource.Bindings.Add(dteStartDateDateTimeValueBinding);
                       // txtCallToAction.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtCallToActionTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CallToAction", txtCallToAction, "Text");
        BindingSource.Bindings.Add(txtCallToActionTextBinding);
                       // dteEndDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dteEndDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("EndDate", dteEndDate, "DateTimeValue");
        BindingSource.Bindings.Add(dteEndDateDateTimeValueBinding);
       
                        // txtLeadSources.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtLeadSourcesTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CampaignLeadSources", txtLeadSources, "Text");
        BindingSource.Bindings.Add(txtLeadSourcesTextBinding);
       
                        // lueManager.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueManagerLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("AccountManager", lueManager, "LookupResultValue");
        BindingSource.Bindings.Add(lueManagerLookupResultValueBinding);
                       // lveOwner.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lveOwnerLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Owner", lveOwner, "LookupResultValue");
        BindingSource.Bindings.Add(lveOwnerLookupResultValueBinding);
    
   
        }
	   	   	   	   	   	   	   	   	   	   	   	   	   
protected void cmdLeadSource_ClickAction(object sender, EventArgs e) {
if (DialogService != null) {
	// DialogActionItem
	DialogService.SetSpecs(400, 600, "AddCampaignLeadSources", GetLocalResourceObject("aaab8592-5e1a-4002-9764-75a07bfd6a9c.DialogTitleOverride").ToString() );
    DialogService.EntityType = typeof(Sage.Entity.Interfaces.ICampaign); 
    DialogService.ShowDialog();
}
}
protected void cmdSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.ICampaign _entity = BindingSource.Current as Sage.Entity.Interfaces.ICampaign;
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
          cmdSave_ClickActionBRC(sender, e);
    
  
}
protected void cmdSave_ClickActionBRC(object sender, EventArgs e) {
      Response.Redirect(string.Format("Campaign.aspx?entityId={0}", (this.BindingSource.Current as Sage.Platform.ComponentModel.IComponentReference).Id));
  
}
protected void cmdSaveNew_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.ICampaign _entity = BindingSource.Current as Sage.Entity.Interfaces.ICampaign;
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
          cmdSaveNew_ClickActionBRC(sender, e);
    
  
}
protected void cmdSaveNew_ClickActionBRC(object sender, EventArgs e) {
   Response.Redirect("InsertCampaign.aspx?modeid=Insert");
 
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 cmdLeadSource.Click += new ImageClickEventHandler(cmdLeadSource_ClickAction);
cmdSave.Click += new ImageClickEventHandler(cmdSave_ClickAction);
cmdSaveNew.Click += new ImageClickEventHandler(cmdSaveNew_ClickAction);


}

protected void quickformload0(object sender, EventArgs e) {
Sage.Entity.Interfaces.ICampaign newCampaign = this.BindingSource.Current as Sage.Entity.Interfaces.ICampaign;

    if (Request.QueryString[Sage.Platform.WebPortal.EntityPage.CONST_ENTITYIDQUERYSTRING] != null)
    {
        string id = Request.QueryString[Sage.Platform.WebPortal.EntityPage.CONST_ENTITYIDQUERYSTRING];
        Sage.Entity.Interfaces.ICampaign campaign = Sage.Platform.EntityFactory.GetRepository<Sage.Entity.Interfaces.ICampaign>().FindFirstByProperty("Id", id);

        object[] objarray = new object[] { campaign, newCampaign, id };
        Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.ICampaign>("Campaign.CopyCampaign", objarray);
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
ClientBindingMgr.RegisterSaveButton(cmdSave);

ClientBindingMgr.RegisterSaveButton(cmdSaveNew);



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
	get { return _formAdapter ?? (_formAdapter = new InsertCampaignAdapter(this)); }
}

public class InsertCampaignAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IInsertCampaign
{
	public InsertCampaignAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.ITextBoxControl _txtCampaignName;
	public Sage.Platform.Controls.ITextBoxControl txtCampaignName
	{
		get { return FindControl(ref _txtCampaignName, "txtCampaignName"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtDescription;
	public Sage.Platform.Controls.ITextBoxControl txtDescription
	{
		get { return FindControl(ref _txtDescription, "txtDescription"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtObjective;
	public Sage.Platform.Controls.ITextBoxControl txtObjective
	{
		get { return FindControl(ref _txtObjective, "txtObjective"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtCallToAction;
	public Sage.Platform.Controls.ITextBoxControl txtCallToAction
	{
		get { return FindControl(ref _txtCallToAction, "txtCallToAction"); }
	}
	private Sage.Platform.Controls.IControlsListControl _QFControlsList;
	public Sage.Platform.Controls.IControlsListControl QFControlsList
	{
		get { return FindControl(ref _QFControlsList, "QFControlsList"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtLeadSources;
	public Sage.Platform.Controls.ITextBoxControl txtLeadSources
	{
		get { return FindControl(ref _txtLeadSources, "txtLeadSources"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdLeadSource;
	public Sage.Platform.Controls.IButtonControl cmdLeadSource
	{
		get { return FindControl(ref _cmdLeadSource, "cmdLeadSource"); }
	}
	private Sage.Platform.Controls.IListBoxControl _cboStatus;
	public Sage.Platform.Controls.IListBoxControl cboStatus
	{
		get { return FindControl(ref _cboStatus, "cboStatus"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtCode;
	public Sage.Platform.Controls.ITextBoxControl txtCode
	{
		get { return FindControl(ref _txtCode, "txtCode"); }
	}
	private Sage.Platform.Controls.IDateTimePickerControl _dteStartDate;
	public Sage.Platform.Controls.IDateTimePickerControl dteStartDate
	{
		get { return FindControl(ref _dteStartDate, "dteStartDate"); }
	}
	private Sage.Platform.Controls.IDateTimePickerControl _dteEndDate;
	public Sage.Platform.Controls.IDateTimePickerControl dteEndDate
	{
		get { return FindControl(ref _dteEndDate, "dteEndDate"); }
	}
	private Sage.Platform.Controls.IUserControl _lueManager;
	public Sage.Platform.Controls.IUserControl lueManager
	{
		get { return FindControl(ref _lueManager, "lueManager"); }
	}
	private Sage.Platform.Controls.IOwnerControl _lveOwner;
	public Sage.Platform.Controls.IOwnerControl lveOwner
	{
		get { return FindControl(ref _lveOwner, "lveOwner"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdSave;
	public Sage.Platform.Controls.IButtonControl cmdSave
	{
		get { return FindControl(ref _cmdSave, "cmdSave"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdSaveNew;
	public Sage.Platform.Controls.IButtonControl cmdSaveNew
	{
		get { return FindControl(ref _cmdSaveNew, "cmdSaveNew"); }
	}

}

</script>

<script type="text/javascript">
</script>
