using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BusInfo.Models
{
    public partial class Addbusdata : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=(LocalDB)\\MSSQLLocalDB; database=db_mahi; user id=maheshm; pwd=Mahesh@123; ");

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void button1clicked(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into businfo(busid,boardingpoint,traveldate,amount,rating) values('" + Textbox4.Text + "','" + dropdownlist1.SelectedValue + "','" + Textbox1.Text + "','" + Textbox2.Text + "','" + Textbox3.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Textbox4.Text = "";
            Textbox1.Text = "";
            Textbox2.Text = "";
            Textbox3.Text = "";
            dropdownlist1.SelectedValue = "Please select";

        }

        protected void button2clicked(object sender, EventArgs e)
        {

            con.Open();
            string query = "select * from businfo where boardingpoint='Mumbai'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();

            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();

        }

       
    }
}