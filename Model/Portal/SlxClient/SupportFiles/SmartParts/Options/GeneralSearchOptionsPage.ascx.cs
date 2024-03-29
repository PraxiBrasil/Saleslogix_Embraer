using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sage.Entity.Interfaces;
using Sage.Platform;
using Sage.Platform.Application;
using Sage.Platform.Application.Services;
using Sage.Platform.Application.UI;
using Sage.Platform.Application.UI.Web;
using Sage.Platform.WebPortal.SmartParts;
using Sage.SalesLogix;
using Sage.SalesLogix.WebUserOptions;
using Sage.Platform.Data;
using System.Data.OleDb;
using System.Data;
using System.Collections.Generic;
using Sage.SalesLogix.Security;

public partial class GeneralSearchOptionsPage : UserControl, ISmartPartInfoProvider
{

    private IPageWorkItemLocator _locator;
    [ServiceDependency]
    public IPageWorkItemLocator Locator
    {
        get { return _locator; }
        set { _locator = value; }
    }

    private const string _optionsMapPath = @"App_Data\LookupValues";

    /// <summary>
    /// Handles the PreRender event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
    protected void Page_PreRender(object sender, EventArgs e)
    {
        GeneralSearchOptions options;
        options = GeneralSearchOptions.Load(Server.MapPath(_optionsMapPath));
        // set defaults
        Utility.SetSelectedValue(_showOnStartup, GetStartupValFromUrl(options.ShowOnStartup));
        if (options.DefaultOwnerTeam != string.Empty)
            _defaultOwnerTeam.LookupResultValue = EntityFactory.GetById<IOwner>(options.DefaultOwnerTeam);
        Utility.SetSelectedValue(_logToHistory, "T");
        const string falseValues = "F,FALSE,N,NO,0";
        if (falseValues.IndexOf(options.LogToHistory.ToUpperInvariant()) > -1)
            Utility.SetSelectedValue(_logToHistory, "F");
        _promptDuplicateContacts.Checked = options.PromptForDuplicateContacts;
        _promptContactNotFound.Checked = options.PromptForContactNotFound;
        _useActiveReporting.Checked = options.UseActiveReporting;
        _autoLogoff.Checked = options.AutoLogoff;
        _logoffDuration.Text = options.LogoffDuration.ToString();
        Utility.SetSelectedValue(_logoffUnits, options.LogoffUnits);
        txtEmailBaseTemplateId.Text = options.EmailBaseTemplate;
        txtLetterBaseTemplateId.Text = options.LetterBaseTemplate;
        txtFaxBaseTemplateId.Text = options.FaxBaseTemplate;
        txtRecentTemplates.Text = options.RecentTemplates;
        txtFaxProvider.Text = options.FaxProvider;
        chkPromptForUnsavedData.Checked = options.PromptForUnsavedData;

        txtEmailBaseTemplate.Text = Utility.GetSingleValue("Name", "Plugin", "PluginId", txtEmailBaseTemplateId.Text);
        txtLetterBaseTemplate.Text = Utility.GetSingleValue("Name", "Plugin", "PluginId", txtLetterBaseTemplateId.Text);
        txtFaxBaseTemplate.Text = Utility.GetSingleValue("Name", "Plugin", "PluginId", txtFaxBaseTemplateId.Text);

        if (FormHelper.GetSystemInfoOption("MultiCurrency"))
        {
            lblMyCurrency.Visible = true;
            luMyCurrency.Visible = true;
            if (!String.IsNullOrEmpty(options.MyCurrencyCode))
            {
                luMyCurrency.LookupResultValue = EntityFactory.GetById<IExchangeRate>(options.MyCurrencyCode);
            }
        }
        else
        {
            lblMyCurrency.Visible = false;
            luMyCurrency.Visible = false;
        }
        txtEmailBaseTemplateId.Attributes.Add("style", "display:none");
        txtLetterBaseTemplateId.Attributes.Add("style", "display:none");
        txtFaxBaseTemplateId.Attributes.Add("style", "display:none");
        txtRecentTemplates.Attributes.Add("onchange", "javascript:checkMenuRange()");

        SystemInformation systemInfo = SystemInformationRules.GetSystemInfo();
        const int dbRemote = 2;
        if ((systemInfo != null && systemInfo.DatabaseType.HasValue && systemInfo.DatabaseType.Value != dbRemote))
        {
            // If this is *not* a remote database then hide the "Use ActiveReporting" option.
            _useActiveReporting.Attributes.Add("style", "display:none");
        }

        IUserOptionsService _UserOptions = ApplicationContext.Current.Services.Get<IUserOptionsService>();
        string _group = _UserOptions.GetCommonOption("SyncGroup", "Intellisync");
        _defaultOwnerTeam.Enabled = !_UserOptions.GetCommonOptionLocked("InsertSecCodeID", "General");

        if (!string.IsNullOrEmpty(_group))
        {
            Utility.SetSelectedValue(_intellisyncGroup, _group);
            _intellisyncGroup.Enabled = false;
        }
        else
            _intellisyncGroup.Enabled = true;

        bool AllowUserToChange = !_UserOptions.GetCommonOptionLocked("DefaultMemoTemplate", "General");
        txtEmailBaseTemplate.Enabled = AllowUserToChange;
        txtLetterBaseTemplate.Enabled = AllowUserToChange;
        txtFaxBaseTemplate.Enabled = AllowUserToChange;
        if (!AllowUserToChange)
        {
            txtEmailBaseTemplateImg.Attributes.Add("onclick", "");
            txtLetterBaseTemplateImg.Attributes.Add("onclick", "");
            txtFaxBaseTemplateImg.Attributes.Add("onclick", "");
        }
        LoadScript();
    }

    private void BindShowOnStartup()
    {
        if (_showOnStartup.Items.Count == 0)
        {
            // We don't have a good way to get the possiblities to show on startup; mainviews doesn't match, etc.
            _showOnStartup.Items.Add(new ListItem(string.Empty, string.Empty));
            foreach (ListItem ni in StartupItems())
            {
                ListItem navitem = new ListItem(ni.Text, ni.Text);
                _showOnStartup.Items.Add(navitem);
            }
        }
    }

    private List<ListItem> StartupItems()
    {
        var res = new List<ListItem>();
        IWorkspace nb = ((UIWorkItem)Locator).Workspaces["NavBar"];
        foreach (object sp in nb.SmartParts)
        {
            foreach (NavItem ni in ((NavItemCollection)(sp)).Items)
            {
                ListItem navitem = new ListItem(ni.Text, ni.NavURL);
                if (!res.Contains(navitem))
                    res.Add(navitem);
            }
        }
        return res;
    }

    private string GetStartupValFromUrl(string url)
    {
        foreach (ListItem item in StartupItems())
        {
            if (item.Value.Equals(url))
                return item.Text;
        }
        return string.Empty;
    }

    private string GetStartupUrl(string val)
    {
        foreach (ListItem item in StartupItems())
        {
            if (item.Text.Equals(val))
                return item.Value;
        }
        return string.Empty;
    }

    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {      
        Page.Header.Controls.Add(new LiteralControl("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/SlxOptions.css\" />"));
        GeneralSearchOptions options;
        try
        {
            options = GeneralSearchOptions.Load(Server.MapPath(_optionsMapPath));
        }
        catch
        {
            // temporary, as the service throws an exception for options not found
            // the service is not yet complete, but this allows testing of the UI
            options = GeneralSearchOptions.CreateNew(Server.MapPath(_optionsMapPath));
        }

        _logToHistory.DataSource = options.LogToHistoryLookupList;
        _logToHistory.DataTextField = options.DataTextField;
        _logToHistory.DataValueField = options.DataValueField;
        _logoffUnits.DataSource = options.LogoffUnitsList;
        _logoffUnits.DataTextField = options.DataTextField;
        _logoffUnits.DataValueField = options.DataValueField;

        LoadIntellisyncOptions();
        BindShowOnStartup();
        Page.DataBind();
    }

    private void LoadScript()
    {
        const string script = @"
$(document).ready(function() {
    if (Sage.gears) {
        showSDIIsInstalledMsg();
    } else if (Sage.OnGearsInitialized) {
        Sage.OnGearsInitialized.push(showSDIIsInstalledMsg);
    }
});
function showSDIIsInstalledMsg() {
    if (Sage.gears) {
        $('.areinstalled').css('display','inline');
        $('.notinstalled').css('display','none');
    }
}";
        ScriptManager.RegisterStartupScript(Page, GetType(), "genOptionsStartupScript", script, true);
    }

    /// <summary>
    /// Populates the Intellisync option dropdown with a list
    /// of valid sync groups
    /// </summary>
    private void LoadIntellisyncOptions()
    {
        List<ListItem> intellisyncGroups = GetUserSyncGroups();

        // Insert an empty item
        intellisyncGroups.Insert(0, new ListItem("", ""));

        _intellisyncGroup.DataSource = intellisyncGroups;
        _intellisyncGroup.DataBind();
    }

    /// <summary>
    /// Gets a list of the Adhoc contact groups for the logged in user
    /// </summary>
    /// <returns></returns>
    private List<ListItem> GetUserSyncGroups()
    {

        List<ListItem> results = new List<ListItem>();
        string _userID = string.Empty;

        // Get the associated user
        SLXUserService _userService = ApplicationContext.Current.Services.Get<Sage.Platform.Security.IUserService>() as SLXUserService;
        if (_userService != null)
            _userID = _userService.UserId;

        string _format = (string)GetLocalResourceObject("adhoc_group_format");

        // Load up all of the adhoc groups
        IDataService _dataService = ApplicationContext.Current.Services.Get<IDataService>();

        if (_dataService != null && !string.IsNullOrEmpty(_userID))
        {
            using (var conn = _dataService.GetOpenConnection())
            {
                string SQL = "SELECT PLUGINID, NAME, (SELECT COUNT (*) FROM ADHOCGROUP WHERE GroupID = PluginID) AS ContactCount FROM PLUGIN WHERE TYPE = 8 AND FAMILY = 'Contact' AND PluginID IN (SELECT DISTINCT GroupID FROM ADHOCGROUP)	AND UserID = '{0}' ";
                SQL = string.Format(SQL, _userID);

                var adapter = new OleDbDataAdapter(SQL, conn as OleDbConnection);
                DataTable _table = new DataTable();
                adapter.Fill(_table);

                foreach (DataRow row in _table.Rows)
                {
                    results.Add(new ListItem(string.Format(_format, (string)row[1], row[2]), (string)row[0]));
                }
            }
        }

        return results;
    }

    /// <summary>
    /// Handles the Click event of the _save control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
    protected void _save_Click(object sender, EventArgs e)
    {
        if (txtRecentTemplates.Visible)
        {
            int iCount;
            if (int.TryParse(txtRecentTemplates.Text, out iCount))
            {
                if (iCount < 0 || iCount > 10)
                {
                    throw new ValidationException(htxtMenuRangeMessage.Value);
                }
            }
            else
                throw new ValidationException(htxtMenuRangeMessage.Value);
        }
        // save values
        GeneralSearchOptions options = new GeneralSearchOptions(Server.MapPath(_optionsMapPath));
        options.ShowOnStartup = GetStartupUrl(_showOnStartup.SelectedValue);
        options.DefaultOwnerTeam = _defaultOwnerTeam.LookupResultValue.ToString();
        options.LogToHistory = _logToHistory.SelectedValue;
        options.PromptForDuplicateContacts = _promptDuplicateContacts.Checked;
        options.PromptForContactNotFound = _promptContactNotFound.Checked;
        options.UseActiveReporting = _useActiveReporting.Checked;
        options.AutoLogoff = _autoLogoff.Checked;
        options.LogoffDuration = Convert.ToInt32(_logoffDuration.Text);
        options.LogoffUnits = _logoffUnits.SelectedValue;
        options.EmailBaseTemplate = txtEmailBaseTemplateId.Text;
        options.LetterBaseTemplate = txtLetterBaseTemplateId.Text;
        options.FaxBaseTemplate = txtFaxBaseTemplateId.Text;
        options.RecentTemplates = txtRecentTemplates.Text;

        options.PromptForUnsavedData = chkPromptForUnsavedData.Checked;

        if (FaxProviderSelectedValue.Value != "undefined")
        {
            options.FaxProvider = FaxProviderSelectedValue.Value;
        }
        else
        {
            options.FaxProvider = txtFaxProvider.Text;
        }
        if (luMyCurrency.LookupResultValue != null)
        {
            options.MyCurrencyCode = ((IExchangeRate)(luMyCurrency.LookupResultValue)).Id.ToString();
        }

        // Saves the intellisync group
        IUserOptionsService _UserOptions = ApplicationContext.Current.Services.Get<IUserOptionsService>();

        if (_intellisyncGroup.SelectedItem != null)
        {

            _UserOptions.SetCommonOption("SyncGroup", "Intellisync", _intellisyncGroup.SelectedValue, false);
            options.Save();
        }
    }

    /// <summary>
    /// Gets the smart part info.
    /// </summary>
    /// <param name="smartPartInfoType">Type of the smart part info.</param>
    /// <returns></returns>
    public ISmartPartInfo GetSmartPartInfo(Type smartPartInfoType)
    {
        ToolsSmartPartInfo tinfo = new ToolsSmartPartInfo();
        tinfo.Description = GetLocalResourceObject("PageDescription.Text").ToString();
        tinfo.Title = GetLocalResourceObject("PageDescription.Title").ToString();
        foreach (Control c in LitRequest_RTools.Controls)
        {
            tinfo.RightTools.Add(c);
        }
        return tinfo;
    }

    /// <summary>
    /// Handles the Click event of the btnFlushCache control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
    protected void btnFlushCache_Click(object sender, EventArgs e)
    {
        IUserOptionsService _UserOptions = ApplicationContext.Current.Services.Get<IUserOptionsService>();
        _UserOptions.ClearCache();
    }
}