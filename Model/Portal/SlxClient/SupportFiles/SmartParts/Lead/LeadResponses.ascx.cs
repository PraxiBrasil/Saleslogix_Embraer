﻿using System;
using System.Collections;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sage.Platform.WebPortal.SmartParts;
using Sage.Platform.WebPortal.Services;
using log4net;
using Sage.Entity.Interfaces;
using Sage.Platform.Application;
using Sage.Platform.Framework;
using NHibernate;
using System.Text;
using Sage.Platform;
using Sage.Platform.Application.UI;
using System.Collections.Generic;

public partial class SmartParts_Lead_LeadResponses : EntityBoundSmartPartInfoProvider
{
    private IPanelRefreshService _RefreshService;
    

    #region Public Properties

    /// <summary>
    /// Gets the type of the entity.
    /// </summary>
    /// <value>The type of the entity.</value>
    public override Type EntityType
    {
        get { return typeof(ILead); }
    }

    /// <summary>
    /// Gets or sets an instance of the Refresh Service.
    /// </summary>
    /// <value>The refresh service.</value>
    [ServiceDependency]
    public IPanelRefreshService RefreshService
    {
        set
        {
            _RefreshService = value;
        }
        get
        {
            return _RefreshService;
        }
    }

    #endregion

    #region Private Methods

    /// <summary>
    /// Loads the marketing.
    /// </summary>
    private void LoadResponses()
    {
        ILead lead = EntityFactory.GetRepository<ILead>().Get(EntityContext.EntityID);
        if (lead != null)
        {
            IList<ITargetResponse> responses = EntityFactory.GetRepository<ITargetResponse>().FindByProperty("Lead.Id", lead.Id);
            grdLeadResponses.DataSource = responses;
            grdLeadResponses.DataBind();
        }
    }

    /// <summary>
    /// Shows the response view.
    /// </summary>
    /// <param name="targetResponse">The target response.</param>
    private void ShowResponseView(ITargetResponse targetResponse)
    {
        if (DialogService != null)
        {
            string caption = GetLocalResourceObject("AddResponse_DialogCaption").ToString();
            if (targetResponse != null && targetResponse.Id != null)
            {
                caption = GetLocalResourceObject("EditResponse_DialogCaption").ToString();
            }
            DialogService.SetSpecs(200, 200, 550, 800, "AddEditTargetResponse", caption, true);
            DialogService.EntityType = typeof(ITargetResponse);
            if (targetResponse != null && targetResponse.Id != null)
                DialogService.EntityID = targetResponse.Id.ToString();
            DialogService.DialogParameters.Add("ResponseDataSource", targetResponse);
            DialogService.DialogParameters.Add("IsLead", true);
            DialogService.ShowDialog();
        }
    }

    #endregion

    /// <summary>
    /// Derived components should override this method to wire up event handlers.
    /// </summary>
    protected override void OnWireEventHandlers()
    {
        if (ScriptManager.GetCurrent(Page) != null)
            cmdAddResponse.Click += cmdAddResponse_Click;
        base.OnWireEventHandlers();
    }

    /// <summary>
    /// Override this method to add bindings to the currrently bound smart part
    /// </summary>
    protected override void OnAddEntityBindings()
    {
    }

    /// <summary>
    /// Called when the smartpart has been bound.  Derived components should override this method to run code that depends on entity context being set and it not changing.
    /// </summary>
    protected override void OnFormBound()
    {
        if (Page.Visible)
        {
            LoadResponses();
        }
    }

    /// <summary>
    /// Handles the RowDataBound event of the LeadResponses control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="System.Web.UI.WebControls.GridViewRowEventArgs"/> instance containing the event data.</param>
    protected void LeadResponses_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton deleteCommnad = (LinkButton)e.Row.Cells[2].Controls[0];
            deleteCommnad.Attributes.Add("onclick", "javascript: return confirm('" + GetLocalResourceObject("ConfirmMessage_DeleteResponse").ToString() + "');");
        }
    }

    /// <summary>
    /// Handles the RowCommand event of the LeadResponses control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="System.Web.UI.WebControls.GridViewCommandEventArgs"/> instance containing the event data.</param>
    protected void LeadResponses_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        ITargetResponse targetResponse;
        string responseId = String.Empty;
        try
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            responseId = grdLeadResponses.DataKeys[rowIndex].Values[0].ToString();
            if (String.IsNullOrEmpty(responseId))
                return;
            targetResponse = EntityFactory.GetRepository<ITargetResponse>().Get(responseId);
            if (targetResponse == null)
                return;
        }
        catch
        {
            return;
        }

        switch (e.CommandName.ToUpper())
        {
            case "EDIT":
                ShowResponseView(targetResponse);
                break;
            case "DELETE":
                if (targetResponse != null)
                {
                    ICampaignTarget campaignTarget = targetResponse.CampaignTarget;
                    if (campaignTarget != null)
                    {
                        campaignTarget.Status = GetLocalResourceObject("TargetStatus_Removed").ToString();
                        campaignTarget.TargetResponses.Remove(targetResponse);
                    }
                    targetResponse.Delete();
                    LoadResponses();
                }
                break;
            case "SORT":
                break;
        }
    }

    /// <summary>
    /// Handles the RowDeleting event of the LeadResponses control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="System.Web.UI.WebControls.GridViewDeleteEventArgs"/> instance containing the event data.</param>
    protected void LeadResponses_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        grdLeadResponses.SelectedIndex = e.RowIndex;
    }

    /// <summary>
    /// Handles the RowEditing event of the LeadResponses control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="System.Web.UI.WebControls.GridViewEditEventArgs"/> instance containing the event data.</param>
    protected void LeadResponses_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdLeadResponses.SelectedIndex = e.NewEditIndex;
    }

    /// <summary>
    /// Handles the Sorting event of the LeadResponses control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="System.Web.UI.WebControls.GridViewSortEventArgs"/> instance containing the event data.</param>
    protected void LeadResponses_Sorting(object sender, GridViewSortEventArgs e)
    {
    }

    /// <summary>
    /// Handles the Click event of the cmdAddResponse control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="System.Web.UI.ImageClickEventArgs"/> instance containing the event data.</param>
    protected void cmdAddResponse_Click(object sender, ImageClickEventArgs e)
    {
        ITargetResponse targetResponse = EntityFactory.Create<ITargetResponse>();
        ShowResponseView(targetResponse);
    }

    #region ISmartPartInfoProvider Members

    /// <summary>
    /// Tries to retrieve smart part information compatible with type
    /// smartPartInfoType.
    /// </summary>
    /// <param name="smartPartInfoType">Type of information to retrieve.</param>
    /// <returns>
    /// The <see cref="T:Sage.Platform.Application.UI.ISmartPartInfo"/> instance or null if none exists in the smart part.
    /// </returns>
    public override ISmartPartInfo GetSmartPartInfo(Type smartPartInfoType)
    {
        ToolsSmartPartInfo tinfo = new ToolsSmartPartInfo();
        foreach (Control c in LeadResponses_RTools.Controls)
        {
            tinfo.RightTools.Add(c);
        }
        return tinfo;
    }

    #endregion
}
