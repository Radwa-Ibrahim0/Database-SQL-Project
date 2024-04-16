﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student2_advising
{
    public partial class makeup1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_makeup_exam1_Click(object sender, EventArgs e)
        {
            try
            {
                String connstr = WebConfigurationManager.ConnectionStrings["Advising_System"].ToString();
                //create a new connection
                SqlConnection conn = new SqlConnection(connstr);
                if (makeup1_course_id.Text == "" || makeup1_semester_code.Text == "")
                {
                    Response.Write("fill all textboxes");
                    makeup1label.Text = "";
                    return;

                }
                int course_id = Int16.Parse(makeup1_course_id.Text);
                string semester_code = makeup1_semester_code.Text;
                int sid = Int16.Parse((string)Session["studentid"]);
                

                SqlCommand Register_makeup_exam1_Click_proc = new SqlCommand("[Procedures_StudentRegisterFirstMakeup]", conn);
                Register_makeup_exam1_Click_proc.CommandType = CommandType.StoredProcedure;
                Register_makeup_exam1_Click_proc.Parameters.Add(new SqlParameter("@StudentID", sid));
                Register_makeup_exam1_Click_proc.Parameters.Add(new SqlParameter("@courseID", course_id));
                Register_makeup_exam1_Click_proc.Parameters.Add(new SqlParameter("@studentCurr_sem", semester_code));


                conn.Open();
                int result = Register_makeup_exam1_Click_proc.ExecuteNonQuery();
                if (result > 0)
                {
                    makeup1label.Text = "Registered succesfully!";
                }
                else
                {
                    makeup1label.Text = "Registration Falied!";
                }

                conn.Close();

            }
            catch(Exception ex)
            {
                Response.Write("enter a valid course id or semester code");
                Response.Write(", Try Again");
                makeup1label.Text = "";


            }


        }

        protected void makeup1_back_Click(object sender, EventArgs e)
        {
            String connstr = WebConfigurationManager.ConnectionStrings["Advising_System"].ToString();
            //create a new connection
            SqlConnection conn = new SqlConnection(connstr);
            Response.Redirect("student2.aspx");
        }
    }
}