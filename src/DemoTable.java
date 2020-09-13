import javax.swing.*;
import javax.swing.table.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.Vector;

public class DemoTable extends JFrame implements ActionListener
{
	Connection con;
	Statement st;
	ResultSet rs;
	ImageIcon ic;
	Vector Columnname= new Vector();
	JLabel l=new JLabel();
	Vector data= new Vector();
	JButton back= new JButton("BACK");
 public DemoTable()
  {
	
	  try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodcourt","root","database");
			st=con.createStatement();
		}
		catch(Exception e)
		{
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
 
  this.setResizable(false);
  JPanel panel = new JPanel();
  Columnname.clear();
	data.clear();
	try
	{
	rs=st.executeQuery("select * from mcdmeal");
	ResultSetMetaData md= rs.getMetaData();
	int columns= md.getColumnCount();
	
	for(int i=1;i<=columns;i++)
	{
		Columnname.addElement(md.getColumnName(i));
	}while(rs.next())
	{
		Vector row= new Vector(columns);
		data.addElement(row);
		
		for(int i=1;i<=columns;i++)
		{
			row.addElement(rs.getObject(i));
		}
	}
	JTable table = new JTable(data,Columnname);
	table.setEnabled(false);
	TableColumn col;
	for( int i=0; i< table.getColumnCount();i++)
	{
		col=table.getColumnModel().getColumn(i);
		col.setMinWidth(150);
		
	}
	  JTableHeader header = table.getTableHeader();
	  header.setBackground(Color.LIGHT_GRAY);
	  JScrollPane pane = new JScrollPane(table);
	  this.setSize(1366,768);
	  
 this.add(back);
		  back.addActionListener(this);
		  back.setBounds(620,450,120,40);
		  table.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
		  panel.add(pane);
		   
		  this.add(panel);
		  
	  this.setUndecorated(true);
	  this.getRootPane().setWindowDecorationStyle(JRootPane.PLAIN_DIALOG);
	  this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
	  this.setVisible(true);
	}
	catch(Exception ex)
	{
		JOptionPane.showMessageDialog(null,ex.getMessage());
	}

}
  public static void main(String[] args) 
  {
	  new DemoTable();
  }
public void actionPerformed(ActionEvent ar) 
{
	if(ar.getSource()==back)
	{
		this.hide();
		new mcd();
	}	
}
}