<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    void Application_BeginRequest(object sender, EventArgs e)
    {
        //if (Request.Url.Host.ToLower() == "thekcclassic.com") // if this is production
        //{
        //    string[] segments = HttpContext.Current.Request.Url.Segments;
        //    if ((segments[segments.Length - 1].ToLower() == "cart2.aspx") || (segments[segments.Length - 1].ToLower() == "cart3.aspx"))
        //    {
        //        if (Request.Url.ToString().ToLower().Substring(0, 5) != "https")
        //        {
        //            Response.Redirect(Request.Url.ToString().ToLower().Replace("http:", "https:"));
        //        }
        //    }
        //    else
        //    {
        //        if (Request.Url.ToString().ToLower().Substring(0, 5) == "https")
        //        {
        //            Response.Redirect(Request.Url.ToString().ToLower().Replace("https:", "http:"));
        //        }
        //    }
        //}

        string newUrl = Request.Url.ToString().ToLower();
        bool change = false;
        if (newUrl.Contains("www."))
        {
            newUrl = newUrl.Replace("www.", "");
            change = true;
        }

        // make everything https
        if (newUrl.Contains("thekcclassic.com")) // if this is production
        {
            if (newUrl.Substring(0, 5) != "https")
            {
                Response.Redirect(newUrl.Replace("http:", "https:"));
            }
        }

        if (change)
        {
            Response.Redirect(newUrl);
        }
    }
       
</script>
