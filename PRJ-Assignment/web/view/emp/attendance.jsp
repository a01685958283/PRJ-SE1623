<%-- 
    Document   : attendance
    Created on : 28-Jun-2022, 20:27:04
    Author     : DAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <table  margin: 0;
                    padding: 0 ;cellspacing="5" width=80% height="500" border="2">
                <tr>
                <strong>Attendenced for PRJ391 with lecture sonnt5 at slot 5 on Monday 20/06/2022</strong>        
                </tr>
                <tr>
                    <td valign="top">No</td>
                    <td valign="top">Group</td>
                    <td valign="top">Code</td>
                    <td valign="top">Name</td>
                    <td align="center">Image</td>
                    <td valign="top">Status</td>
                    <td valign="top">Comment</td>
                </tr>
                <tr>
                    <td valign="top">1</td>
                    <td valign="top"><span style="color: blue">SE1623</span></td>
                    <td valign="top"><span style="color: blue">HE161701</span></td>
                    <td valign="top"><span style="color: blue">Đoàn Tiến Đạt</span></td>
                    <td align="center"><img src="https://znews-photo.zingcdn.me/w660/Uploaded/ywfrd/2020_11_14/ee8aec7fb7924a48bcc189a4bb5da2695803cd8b_1.jpg" height="120" width="80%" alt="" /></td>
                    <td valign="top">
                        <input type="radio" name="attendence" value="absent"/>Absent</br>
                        <input type="radio" name="attendence" value="present"/>Present
                    </td>
                    <td valign="top"></td>
                </tr>
                <tr>
                    <td valign="top">2</td>
                    <td valign="top"><span style="color: blue">SE1623</span></td>
                    <td valign="top"><span style="color: blue">HE161702</span></td>
                    <td valign="top"><span style="color: blue">Đoàn Bảo Đức</span></td>
                    <td align="center"><img src="https://i.pinimg.com/236x/ce/64/8d/ce648d33d6b765eb1044a8385da6fed6.jpg" height="120" width="80%" alt="" /></td>
                    <td valign="top">
                        <input type="radio" name="attendence" value="absent"/>Absent</br>
                        <input type="radio" name="attendence" value="present"/>Present
                    </td>
                    <td valign="top"><span style="color: red">Covid-19</span></td>
                </tr>
                <tr>
                    <td valign="top">3</td>
                    <td valign="top"><span style="color: blue">SE1623</span></td>
                    <td valign="top"><span style="color: blue">HE161703</span></td>
                    <td valign="top"><span style="color: blue">Vũ Viêt Hoàng</span></td>
                    <td align="center"><img src="https://kenh14cdn.com/203336854389633024/2021/4/3/photo-6-161746805626497079920.jpg" height="120" width="80%" alt="" /></td>
                    <td valign="top">
                        <input type="radio" name="attendence" value="absent"/>Absent</br>
                        <input type="radio" name="attendence" value="present"/>Present
                    </td>
                    <td valign="top"></td>
                </tr>        
            </table>
            <input type="submit"  value="Save">
        </form>
    </body>
</html>
