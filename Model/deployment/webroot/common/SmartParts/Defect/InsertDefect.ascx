<%@ Control Language="C#" ClassName="InsertDefect" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
         <col width="33%" />
            <col width="33%" />
            <col width="33%" />
     <tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklProject_lbl" AssociatedControlID="pklProject" runat="server" Text="<%$ resources: pklProject.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklProject" PickListId="kSYST0000320" PickListName="Project" AlphaSort="true" StorageMode="ID"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklStatus_lbl" AssociatedControlID="pklStatus" runat="server" Text="<%$ resources: pklStatus.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklStatus" PickListId="kSYST0000369" PickListName="Defect Status" StorageMode="ID"  />
  </div>

      </td>
                <td  >
<div class="slxlabel  alignleft checkbox">
  <SalesLogix:SLXCheckBox runat="server" ID="chkSubmitSpeedSearch" CssClass="checkbox "
 Text="<%$ resources: chkSubmitSpeedSearch.Caption %>"  />
</div>
      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklVersionFound_lbl" AssociatedControlID="pklVersionFound" runat="server" Text="<%$ resources: pklVersionFound.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklVersionFound" PickListId="kSYST0000398" PickListName="Defect Version Found" StorageMode="ID"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklSource_lbl" AssociatedControlID="pklSource" runat="server" Text="<%$ resources: pklSource.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklSource" PickListId="kSYST0000396" PickListName="Defect Source" AlphaSort="true" StorageMode="ID"  />
  </div>

      </td>
                <td  >
<div class="slxlabel  alignleft checkbox">
  <SalesLogix:SLXCheckBox runat="server" ID="chkApproveSpeedSearch" CssClass="checkbox "
 Text="<%$ resources: chkApproveSpeedSearch.Caption %>"  />
</div>
      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklTargetVersion_lbl" AssociatedControlID="pklTargetVersion" runat="server" Text="<%$ resources: pklTargetVersion.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklTargetVersion" PickListId="kSYST0000397" PickListName="Defect Target Version" MustExistInList="false" StorageMode="ID"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklType_lbl" AssociatedControlID="pklType" runat="server" Text="<%$ resources: pklType.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklType" PickListId="kSYST0000370" PickListName="Defect Type" AlphaSort="true" StorageMode="ID"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklPublicAccess_lbl" AssociatedControlID="pklPublicAccess" runat="server" Text="<%$ resources: pklPublicAccess.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklPublicAccess" PickListId="kSYST0000335" PickListName="Ticket Activity Public Access" NoneEditable="true" AlphaSort="true" StorageMode="ID"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklProgress_lbl" AssociatedControlID="pklProgress" runat="server" Text="<%$ resources: pklProgress.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklProgress" PickListId="kSYST0000367" PickListName="Defect Resolution" StorageMode="ID"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklPriority_lbl" AssociatedControlID="pklPriority" runat="server" Text="<%$ resources: pklPriority.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklPriority" PickListId="kSYST0000366" PickListName="Defect Priority" StorageMode="ID"  />
  </div>

      </td>
                <td></td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklFixedVersion_lbl" AssociatedControlID="pklFixedVersion" runat="server" Text="<%$ resources: pklFixedVersion.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklFixedVersion" PickListId="kSYST0000365" PickListName="Defect Fixed in Build" StorageMode="ID"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklSeverity_lbl" AssociatedControlID="pklSeverity" runat="server" Text="<%$ resources: pklSeverity.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklSeverity" PickListId="kSYST0000368" PickListName="Defect Severity" StorageMode="ID"  />
  </div>

      </td>
                <td></td>
      </tr>
<tr>
            <td rowspan="3"  >
<div class="dependency">
<SalesLogix:DependencyLookupControl runat="server" ID="dplArea"  LabelCssClass="lbl" ButtonToolTip="<%$ resources: dplArea.ButtonToolTip %>"  >
<LookupResultsHeaderStyle BackColor="ActiveCaption" Font-Bold="True" ForeColor="White" />
<LookupDialogStyle BackColor="ButtonFace" />
<LookupResultsStyle CellPadding="4" ForeColor="Black" />
<DependentLookups>
 <SalesLogix:DependentLookup LookupEntityName="IAreaCategoryIssue" LookupEntityTypeName="Sage.Entity.Interfaces.IAreaCategoryIssue, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" DropDownDisplayProperty="Area" ParentProperty="" PropertyDisplay="<%$ resources: dplArea.DependentLookups.Area.PropertyDisplay %>" BindingPropertyName="Area">
  </SalesLogix:DependentLookup>
 <SalesLogix:DependentLookup LookupEntityName="IAreaCategoryIssue" LookupEntityTypeName="Sage.Entity.Interfaces.IAreaCategoryIssue, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" DropDownDisplayProperty="Category" ParentProperty="Area" PropertyDisplay="<%$ resources: dplArea.DependentLookups.Category.PropertyDisplay %>" BindingPropertyName="Category">
  </SalesLogix:DependentLookup>
 <SalesLogix:DependentLookup LookupEntityName="IAreaCategoryIssue" LookupEntityTypeName="Sage.Entity.Interfaces.IAreaCategoryIssue, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" DropDownDisplayProperty="Issue" ParentProperty="Category" PropertyDisplay="<%$ resources: dplArea.DependentLookups.Issue.PropertyDisplay %>" BindingPropertyName="Issue">
  </SalesLogix:DependentLookup>
  </DependentLookups>
  <LookupPreFilters>
        <SalesLogix:LookupPreFilter PropertyName="Defect" PropertyType="System.Boolean" OperatorCode="="   FilterValue="True"></SalesLogix:LookupPreFilter>
      </LookupPreFilters>
</SalesLogix:DependencyLookupControl>
</div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklFrequency_lbl" AssociatedControlID="pklFrequency" runat="server" Text="<%$ resources: pklFrequency.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklFrequency" PickListId="kSYST0000395" PickListName="Defect Frequency" AlphaSort="true" StorageMode="ID"  />
  </div>

      </td>
                <td></td>
      </tr>
<tr>
                  <td></td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lueAssignedTo_lbl" AssociatedControlID="lueAssignedTo" runat="server" Text="<%$ resources: lueAssignedTo.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol owner"  > 
<SalesLogix:OwnerControl runat="server" ID="lueAssignedTo" ButtonToolTip="<%$ resources: lueAssignedTo.ButtonToolTip %>" AutoPostBack="true" Types="$qfcontrol.Types"  />
  </div>

      </td>
      </tr>
<tr>
                  <td></td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="phnAssignToPhone_lbl" AssociatedControlID="phnAssignToPhone" runat="server" Text="<%$ resources: phnAssignToPhone.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol phone"  > 
    <SalesLogix:Phone runat="server" ID="phnAssignToPhone"
ReadOnly="true"  />
  </div>

      </td>
      </tr>
<tr>
            <td  colspan="2" >
 <div class="twocollbl alignleft" >
   <asp:Label ID="txtSubject_lbl" AssociatedControlID="txtSubject" runat="server" Text="<%$ resources: txtSubject.Caption %>" ></asp:Label>
 </div>
  <div  class="twocoltextcontrol"   >
<asp:TextBox runat="server" ID="txtSubject" Rows="1"
 />
  </div>

      </td>
                      <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtpAssignedDate_lbl" AssociatedControlID="dtpAssignedDate" runat="server" Text="<%$ resources: dtpAssignedDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtpAssignedDate" ButtonToolTip="<%$ resources: dtpAssignedDate.ButtonToolTip %>" />
  </div>

      </td>
      </tr>
<tr>
            <td  colspan="2" >
<asp:Panel runat="server" ID="ctrlDescription" CssClass="controlslist "
>
   <div class="twocollbl alignleft" >
   <asp:Label ID="txtDescription_lbl" AssociatedControlID="txtDescription" runat="server" Text="<%$ resources: txtDescription.Caption %>" ></asp:Label>
 </div>
  <div  class="twocoltextcontrol"   >
<asp:TextBox runat="server" ID="txtDescription" Rows="4"
TextMode="MultiLine" Columns="40"
 />
  </div>

   <asp:ImageButton runat="server" ID="cmdDateStampDescription"
 ToolTip="<%$ resources: cmdDateStampDescription.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=User_Date_Stamp_16x16"  />
 
</asp:Panel>
      </td>
                      <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lueOwner_lbl" AssociatedControlID="lueOwner" runat="server" Text="<%$ resources: lueOwner.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol owner"  > 
<SalesLogix:OwnerControl runat="server" ID="lueOwner" Types="$qfcontrol.Types"  />
  </div>

      </td>
      </tr>
<tr>
            <td  colspan="2" >
<asp:Panel runat="server" ID="ctrlResolution" CssClass="controlslist "
>
   <div class="twocollbl alignleft" >
   <asp:Label ID="txtResolution_lbl" AssociatedControlID="txtResolution" runat="server" Text="<%$ resources: txtResolution.Caption %>" ></asp:Label>
 </div>
  <div  class="twocoltextcontrol"   >
<asp:TextBox runat="server" ID="txtResolution" Rows="4"
TextMode="MultiLine" Columns="40"
 />
  </div>

   <asp:ImageButton runat="server" ID="cmdDateStampResolution"
 ToolTip="<%$ resources: cmdDateStampResolution.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=User_Date_Stamp_16x16"  />
 
</asp:Panel>
      </td>
                      <td></td>
      </tr>
</table>
 

 <SalesLogix:SmartPartToolsContainer runat="server" ID="InsertDefect_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="cmdSave"
 AlternateText="<%$ resources: cmdSave.Caption %>"  ToolTip="<%$ resources: cmdSave.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
  <SalesLogix:PageLink ID="lnkInsertDefectHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="defectadd.htm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink> </SalesLogix:SmartPartToolsContainer>

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
	get { return typeof(Sage.Entity.Interfaces.IDefect); }
}

 

protected override void OnAddEntityBindings() { 
                    // pklProject.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklProjectPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ProjectCode", pklProject, "PickListValue");
        BindingSource.Bindings.Add(pklProjectPickListValueBinding);
                       // pklStatus.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklStatusPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("StatusCode", pklStatus, "PickListValue");
        BindingSource.Bindings.Add(pklStatusPickListValueBinding);
                       // chkSubmitSpeedSearch.Checked Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding chkSubmitSpeedSearchCheckedBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("SubmitSearch", chkSubmitSpeedSearch, "Checked");
        BindingSource.Bindings.Add(chkSubmitSpeedSearchCheckedBinding);
                       // pklVersionFound.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklVersionFoundPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("VersionFound", pklVersionFound, "PickListValue");
        BindingSource.Bindings.Add(pklVersionFoundPickListValueBinding);
                       // pklSource.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklSourcePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Source", pklSource, "PickListValue");
        BindingSource.Bindings.Add(pklSourcePickListValueBinding);
                       // chkApproveSpeedSearch.Checked Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding chkApproveSpeedSearchCheckedBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("AddKnowledge", chkApproveSpeedSearch, "Checked");
        BindingSource.Bindings.Add(chkApproveSpeedSearchCheckedBinding);
                       // pklTargetVersion.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklTargetVersionPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("TargetVersion", pklTargetVersion, "PickListValue");
        BindingSource.Bindings.Add(pklTargetVersionPickListValueBinding);
                       // pklType.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("DefectType", pklType, "PickListValue");
        BindingSource.Bindings.Add(pklTypePickListValueBinding);
                       // pklPublicAccess.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklPublicAccessPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("PublicAccessCode", pklPublicAccess, "PickListValue");
        BindingSource.Bindings.Add(pklPublicAccessPickListValueBinding);
                       // pklProgress.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklProgressPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ResolutionCode", pklProgress, "PickListValue");
        BindingSource.Bindings.Add(pklProgressPickListValueBinding);
                       // pklPriority.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklPriorityPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("PriorityCode", pklPriority, "PickListValue");
        BindingSource.Bindings.Add(pklPriorityPickListValueBinding);
                       // pklFixedVersion.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklFixedVersionPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("FixedInbuild", pklFixedVersion, "PickListValue");
        BindingSource.Bindings.Add(pklFixedVersionPickListValueBinding);
                       // pklSeverity.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklSeverityPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("SeverityCode", pklSeverity, "PickListValue");
        BindingSource.Bindings.Add(pklSeverityPickListValueBinding);
      BindingSource.AddBindingProvider(dplArea as Sage.Platform.EntityBinding.IEntityBindingProvider);
                    // dplArea.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dplAreaTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Area", dplArea, "Text");
        BindingSource.Bindings.Add(dplAreaTextBinding);
                       // pklFrequency.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklFrequencyPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Frequency", pklFrequency, "PickListValue");
        BindingSource.Bindings.Add(pklFrequencyPickListValueBinding);
                       // lueAssignedTo.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueAssignedToLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("AssignedTo", lueAssignedTo, "LookupResultValue");
        BindingSource.Bindings.Add(lueAssignedToLookupResultValueBinding);
                       // phnAssignToPhone.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding phnAssignToPhoneTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("AssignedTo.User.UserInfo.Phone", phnAssignToPhone, "Text");
        BindingSource.Bindings.Add(phnAssignToPhoneTextBinding);
                       // txtSubject.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtSubjectTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Subject", txtSubject, "Text");
        BindingSource.Bindings.Add(txtSubjectTextBinding);
                       // dtpAssignedDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpAssignedDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("AssignedDate", dtpAssignedDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtpAssignedDateDateTimeValueBinding);
       
                        // txtDescription.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtDescriptionTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("DefectProblem.Notes", txtDescription, "Text");
        BindingSource.Bindings.Add(txtDescriptionTextBinding);
       
                        // lueOwner.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueOwnerLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Owner", lueOwner, "LookupResultValue");
        BindingSource.Bindings.Add(lueOwnerLookupResultValueBinding);
       
                        // txtResolution.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtResolutionTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("DefectSolution.Notes", txtResolution, "Text");
        BindingSource.Bindings.Add(txtResolutionTextBinding);
       
     
   
    }
	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   
protected void lueAssignedTo_ChangeAction(object sender, EventArgs e) {
      object[] objarray = new object[] { this.BindingSource.Current };
     Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.IDefect>("Defect.OnAssignedToChanged", objarray);
  
}
protected void cmdDateStampDescription_ClickAction(object sender, EventArgs e) {
      object[] objarray = new object[] { this.BindingSource.Current };
     Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.IDefect>("Defect.AddDefectDescriptionTimeStamp", objarray);
  
}
protected void cmdDateStampResolution_ClickAction(object sender, EventArgs e) {
      object[] objarray = new object[] { this.BindingSource.Current };
     Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.IDefect>("Defect.AddDefectResolutionTimeStamp", objarray);
  
}
protected void cmdSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IDefect _entity = BindingSource.Current as Sage.Entity.Interfaces.IDefect;
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
      Response.Redirect(string.Format("Defect.aspx?entityId={0}", (this.BindingSource.Current as Sage.Platform.ComponentModel.IComponentReference).Id));
  
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 lueAssignedTo.LookupResultValueChanged += new EventHandler(lueAssignedTo_ChangeAction);
cmdDateStampDescription.Click += new ImageClickEventHandler(cmdDateStampDescription_ClickAction);
cmdDateStampResolution.Click += new ImageClickEventHandler(cmdDateStampResolution_ClickAction);
cmdSave.Click += new ImageClickEventHandler(cmdSave_ClickAction);


}

protected void quickformload0(object sender, EventArgs e) {
Sage.Entity.Interfaces.IDefect newDefect = this.BindingSource.Current as Sage.Entity.Interfaces.IDefect;
if (Request.QueryString[Sage.Platform.WebPortal.EntityPage.CONST_ENTITYIDQUERYSTRING] != null)
{
    string id = Request.QueryString[Sage.Platform.WebPortal.EntityPage.CONST_ENTITYIDQUERYSTRING];
    Sage.Entity.Interfaces.IDefect defect = Sage.Platform.EntityFactory.GetRepository<Sage.Entity.Interfaces.IDefect>().FindFirstByProperty("Id", id);

    object[] objarray = new object[] { defect, newDefect, id };
    Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.IDefect>("Defect.CopyDefect", objarray);
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
ScriptManager.RegisterStartupScript(Page, GetType(), "cleanupcontainer", "jQuery(\".controlslist > div:empty\").remove();", true);
ClientBindingMgr.RegisterSaveButton(cmdSave);



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
	get { return _formAdapter ?? (_formAdapter = new InsertDefectAdapter(this)); }
}

public class InsertDefectAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IInsertDefect
{
	public InsertDefectAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
		: base(smartPart) {}

	private Sage.Platform.Controls.IPickListControl _pklProject;
	public Sage.Platform.Controls.IPickListControl pklProject
	{
		get { return FindControl(ref _pklProject, "pklProject"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklVersionFound;
	public Sage.Platform.Controls.IPickListControl pklVersionFound
	{
		get { return FindControl(ref _pklVersionFound, "pklVersionFound"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklTargetVersion;
	public Sage.Platform.Controls.IPickListControl pklTargetVersion
	{
		get { return FindControl(ref _pklTargetVersion, "pklTargetVersion"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklProgress;
	public Sage.Platform.Controls.IPickListControl pklProgress
	{
		get { return FindControl(ref _pklProgress, "pklProgress"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklFixedVersion;
	public Sage.Platform.Controls.IPickListControl pklFixedVersion
	{
		get { return FindControl(ref _pklFixedVersion, "pklFixedVersion"); }
	}
	private Sage.Platform.Controls.IDependencyLookupControl _dplArea;
	public Sage.Platform.Controls.IDependencyLookupControl dplArea
	{
		get { return FindControl(ref _dplArea, "dplArea"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtSubject;
	public Sage.Platform.Controls.ITextBoxControl txtSubject
	{
		get { return FindControl(ref _txtSubject, "txtSubject"); }
	}
	private Sage.Platform.Controls.IControlsListControl _ctrlDescription;
	public Sage.Platform.Controls.IControlsListControl ctrlDescription
	{
		get { return FindControl(ref _ctrlDescription, "ctrlDescription"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtDescription;
	public Sage.Platform.Controls.ITextBoxControl txtDescription
	{
		get { return FindControl(ref _txtDescription, "txtDescription"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdDateStampDescription;
	public Sage.Platform.Controls.IButtonControl cmdDateStampDescription
	{
		get { return FindControl(ref _cmdDateStampDescription, "cmdDateStampDescription"); }
	}
	private Sage.Platform.Controls.IControlsListControl _ctrlResolution;
	public Sage.Platform.Controls.IControlsListControl ctrlResolution
	{
		get { return FindControl(ref _ctrlResolution, "ctrlResolution"); }
	}
	private Sage.Platform.Controls.ITextBoxControl _txtResolution;
	public Sage.Platform.Controls.ITextBoxControl txtResolution
	{
		get { return FindControl(ref _txtResolution, "txtResolution"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdDateStampResolution;
	public Sage.Platform.Controls.IButtonControl cmdDateStampResolution
	{
		get { return FindControl(ref _cmdDateStampResolution, "cmdDateStampResolution"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklStatus;
	public Sage.Platform.Controls.IPickListControl pklStatus
	{
		get { return FindControl(ref _pklStatus, "pklStatus"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklSource;
	public Sage.Platform.Controls.IPickListControl pklSource
	{
		get { return FindControl(ref _pklSource, "pklSource"); }
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
	private Sage.Platform.Controls.IPickListControl _pklSeverity;
	public Sage.Platform.Controls.IPickListControl pklSeverity
	{
		get { return FindControl(ref _pklSeverity, "pklSeverity"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklFrequency;
	public Sage.Platform.Controls.IPickListControl pklFrequency
	{
		get { return FindControl(ref _pklFrequency, "pklFrequency"); }
	}
	private Sage.Platform.Controls.ICheckBoxControl _chkSubmitSpeedSearch;
	public Sage.Platform.Controls.ICheckBoxControl chkSubmitSpeedSearch
	{
		get { return FindControl(ref _chkSubmitSpeedSearch, "chkSubmitSpeedSearch"); }
	}
	private Sage.Platform.Controls.ICheckBoxControl _chkApproveSpeedSearch;
	public Sage.Platform.Controls.ICheckBoxControl chkApproveSpeedSearch
	{
		get { return FindControl(ref _chkApproveSpeedSearch, "chkApproveSpeedSearch"); }
	}
	private Sage.Platform.Controls.IPickListControl _pklPublicAccess;
	public Sage.Platform.Controls.IPickListControl pklPublicAccess
	{
		get { return FindControl(ref _pklPublicAccess, "pklPublicAccess"); }
	}
	private Sage.Platform.Controls.IOwnerControl _lueAssignedTo;
	public Sage.Platform.Controls.IOwnerControl lueAssignedTo
	{
		get { return FindControl(ref _lueAssignedTo, "lueAssignedTo"); }
	}
	private Sage.Platform.Controls.IPhoneControl _phnAssignToPhone;
	public Sage.Platform.Controls.IPhoneControl phnAssignToPhone
	{
		get { return FindControl(ref _phnAssignToPhone, "phnAssignToPhone"); }
	}
	private Sage.Platform.Controls.IDateTimePickerControl _dtpAssignedDate;
	public Sage.Platform.Controls.IDateTimePickerControl dtpAssignedDate
	{
		get { return FindControl(ref _dtpAssignedDate, "dtpAssignedDate"); }
	}
	private Sage.Platform.Controls.IOwnerControl _lueOwner;
	public Sage.Platform.Controls.IOwnerControl lueOwner
	{
		get { return FindControl(ref _lueOwner, "lueOwner"); }
	}
	private Sage.Platform.Controls.IButtonControl _cmdSave;
	public Sage.Platform.Controls.IButtonControl cmdSave
	{
		get { return FindControl(ref _cmdSave, "cmdSave"); }
	}

}

</script>

<script type="text/javascript">
</script>
