<%@ Application Language="C#" %>
<%@ Import Namespace="Elmah" %>

<script runat="server">

    // ReSharper disable InconsistentNaming
   
    void ErrorMail_Filtering(object sender, ExceptionFilterEventArgs e)
    {
        if (MailSetup.SuppressesErrorMailing) 
            e.Dismiss();
    }
    
    void ErrorLog_Logging(object sender, Elmah.ErrorLoggingEventArgs e)
    {
        e.Error.AdditionalData.Add("json", "{\"dog\":\"revis\"}");
    }
    
    // ReSharper restore InconsistentNaming
       
</script>
