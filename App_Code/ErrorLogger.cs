using System;
using System.Configuration;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ErrorLogger
/// </summary>
public static class ErrorLogger
{
    public static void LogError(string errorMessage, string stackTrace, string location)
    {
        try
        {
            string q = "INSERT INTO ErrorLog  (ErrorMessage, ErrorStackTrace, ErrorLocation, ErrorDate) VALUES (@erroMsg,  @stackTrce, @locate, @errDate)";
            SqlParameter prmMsg = new SqlParameter("@erroMsg", errorMessage);
            SqlParameter prmStack = new SqlParameter("@stackTrce", stackTrace);
            SqlParameter prmLoc = new SqlParameter("@locate", location);
            SqlParameter prmDate = new SqlParameter("@errDate", DateTime.Now);
            ConnectionStringSettings dbConString = ConfigurationManager.ConnectionStrings["gforcetkdConnectionString1"];
            using (SqlConnection con = new SqlConnection(dbConString.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.Parameters.Add(prmMsg);
                cmd.Parameters.Add(prmStack);
                cmd.Parameters.Add(prmLoc);
                cmd.Parameters.Add(prmDate);
                con.Open();
                int rezult = cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        catch (Exception)
        {
            // swallow errors here
        }
  
    }
}