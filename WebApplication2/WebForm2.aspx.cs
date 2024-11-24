using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=HotelDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ftype=RadioButtonList1.SelectedValue.ToString();
            string fcon = ftext.InnerText;
            string fname=TextBox1.Text;
            string lname=TextBox2.Text;
            string mail=TextBox3.Text;
            try
            {
                string spCommand = $"EXEC CFEEDBACK '{ftype}', '{fcon}', '{fname}', '{lname}', '{mail}'";
                SqlCommand cmd = new SqlCommand(spCommand,con);
                con.Open();
                int res=cmd.ExecuteNonQuery();
                if (res != 0)
                {
                    Response.Redirect("WebForm3.aspx");
                    Response.End();
                }
                else
                {
                    Response.Write("data not saved");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();    
            }
        }
    }
}