<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Collections;
using System.Collections.Generic;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        
        context.Response.ContentType = "text/plain";
        //string title = context.Request.QueryString["title"].ToString();
        //DateTime start = Convert.ToDateTime(context.Request.QueryString["start"]);
        //DateTime end = Convert.ToDateTime(context.Request.QueryString["end"]);
        //string rendering = context.Request.QueryString["rendering"].ToString();
        //string color = context.Request.QueryString["color"].ToString();


        List<CalendarEvents> tasksList = new List<CalendarEvents>();

        tasksList.Add(new CalendarEvents
        {            
            title = "Holiday",
            start = "2018-07-29",
            end = "2018-07-29",
            rendering = "background",
            color = "#FFEBE7",
        });

        tasksList.Add(new CalendarEvents
        {
            title = "Holiday",
            start = "2018-08-04",
            end = "2018-08-04",
            rendering = "background",
            color = "#FFEBE7",
        });

        tasksList.Add(new CalendarEvents
        {
            title = "Holiday",
            start = "2018-08-04",
            end = "2018-08-04",
            rendering = "",
            color = "",
        });

        tasksList.Add(new CalendarEvents
        {
            title = "TD1",
            start = "2018-08-07",
            end = "",
            rendering = "",
            color = "",
        });

        tasksList.Add(new CalendarEvents
        {
            title = "TD2",
            start = "2018-08-07",
            end = "",
            rendering = "",
            color = "",
        });

        tasksList.Add(new CalendarEvents
        {
            title = "TD3",
            start = "2018-08-07T13:00:00",
            end = "2018-08-07T15:00:00",
            rendering = "",
            color = "#67FF8B",
        });

        tasksList.Add(new CalendarEvents
        {
            title = "TD4",
            start = "2018-08-07",
            end = "",
            rendering = "",
            color = "",
        });

        tasksList.Add(new CalendarEvents
        {
            title = "TD5",
            start = "2018-08-07",
            end = "",
            rendering = "",
            color = "",
        });

        tasksList.Add(new CalendarEvents
        {
            title = "TD6",
            start = "2018-08-07",
            end = "",
            rendering = "",            
            color = "",
        });
        

        //Serialize events to string
        System.Web.Script.Serialization.JavaScriptSerializer oSerializer = new System.Web.Script.Serialization.JavaScriptSerializer();
        string sJSON = oSerializer.Serialize(tasksList);

        //Write JSON to response object
        context.Response.Write(sJSON);

    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

    public class CalendarEvents
    {        
        public string title { get; set; }
        public string rendering { get; set; }
        public string start { get; set; }
        public string end { get; set; }
        public string color { get; set; }
    }

}