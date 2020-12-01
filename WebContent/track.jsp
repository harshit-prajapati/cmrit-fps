    <%@page import="java.util.Iterator"%>
<%@page import="com.model.Table"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.process.ConnectionDao"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<div class="container_box2">
        <div class="first_row">
            <div class="option_bold">Track Payment</div>
            <div class="issue"><a href="https://forms.gle/zgNBg87pXNYV4ATu8" target="_blank">Report an Issue</a></div>
        </div>
        <br>
        <table id="track_payment">
            <tr>
                <th  class="left-table-style">Invoice ID</th>
                <th >Payment Type</th>
                <th >Date</th>
                <th >Invoice Amount</th>
                <th  class="right-table-style">Status</th>
            </tr>
            </table>
            <div class='scrolltable' style="overflow:scroll; ">
             <% Session session2;
List list2=new ArrayList();
HttpSession hs1= request.getSession(false);

Configuration configuration2=ConnectionDao.getConnnConnectionDao();
configuration2.configure("hibernate.cfg.xml");
 session2=configuration2.buildSessionFactory().openSession();
 Transaction  transaction1=session2.beginTransaction();
   Criteria c1=session2.createCriteria(Table.class);
 
   
    List l1=c1.list();
   
     Iterator<Table> i1=l1.iterator();
   while (i1.hasNext()) {
	  
    Table t=i1.next();
   if(hs1.getAttribute("name").toString().equals(t.getName())){
    
   %>
            <table id="track_payment">
            
            <tr>
                <td class="left-table-style"><%=t.getInvoice_id() %> &nbsp&nbsp&nbsp<a href="#"><i class="fas fa-download"></i></a></td>
                <td><%=t.getPayment_type()%> </td>
                <td><%=t.getDate() %> </td>
                <td>Rs <%=t.getInvoice_amt() %> </td>
                <td class="right-table-style-completed"><%=t.getStatus()%></td>

            </tr>
         
        </table>
       </div>
    </div>
   <%}}%>