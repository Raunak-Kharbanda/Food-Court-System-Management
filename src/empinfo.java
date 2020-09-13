import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.sql.DriverManager;

import javax.swing.*;

public class empinfo extends JFrame implements ActionListener
{
	Connection con;
	Statement st;
	ResultSet rs;
	JLabel l1=new JLabel("Employee Database");
	JLabel l2=new JLabel("Employee id:");
	JLabel eid=new JLabel("Employee id:");
	JLabel l3=new JLabel("Employee name:");
	JLabel l4=new JLabel("Duty:");
	JLabel l5=new JLabel("Shift:");
	JLabel l6=new JLabel("Salary:");
	JComboBox c1=new JComboBox();
	JTextField teid=new JTextField();
	JTextField t2=new JTextField();
	JTextField t3=new JTextField();
	JTextField t4=new JTextField();
	JTextField t5=new JTextField();
	JButton b1=new JButton("Details");
	JButton b2=new JButton("Add");
	JButton b3=new JButton("Remove");
	JButton b4=new JButton("Update");
	JButton back=new JButton("BACK");
	public empinfo()
	{
		setTitle("Uncle Bob's");
		this.setLayout(null);
		this.setVisible(true);
		this.setSize(1366,768);
		setLayout(new BorderLayout());
		JLabel bg=new JLabel(new ImageIcon("G:\\pics\\Untitled1.jpg"));
		add(bg);
		l1.setBounds(480,120,400,60);bg.add(l1);
		l2.setBounds(520,200,150,30);bg.add(l2);
		c1.setBounds(680,200,80,30);bg.add(c1);
		c1.setBackground(Color.BLACK);c1.setForeground(Color.WHITE);c1.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		b1.setBounds(620,260,100,30);bg.add(b1);
		eid.setBounds(530,320,180,30);bg.add(eid);
		teid.setBounds(680,320,140,30);bg.add(teid);
		l3.setBounds(490,370,180,30);bg.add(l3);
		t2.setBounds(680,370,140,30);bg.add(t2);
		l4.setBounds(600,420,150,30);bg.add(l4);
		t3.setBounds(680,420,140,30);bg.add(t3);
		l5.setBounds(595,470,150,30);bg.add(l5);
		t4.setBounds(680,470,140,30);bg.add(t4);
		l6.setBounds(585,520,150,30);bg.add(l6);
		t5.setBounds(680,520,140,30);bg.add(t5);
		b2.setBounds(540,570,120,30);bg.add(b2);
		b3.setBounds(680,570,120,30);bg.add(b3);
		b4.setBounds(600,620,120,30);bg.add(b4);
		l1.setFont(new Font("Comic Sans MS", Font.BOLD, 40));l1.setForeground(Color.WHITE);
		l2.setFont(new Font("Comic Sans MS", Font.BOLD, 22));l2.setForeground(Color.WHITE);
		eid.setFont(new Font("Comic Sans MS", Font.BOLD, 22));eid.setForeground(Color.WHITE);
		l3.setFont(new Font("Comic Sans MS", Font.BOLD, 22));l3.setForeground(Color.WHITE);
		l4.setFont(new Font("Comic Sans MS", Font.BOLD, 22));l4.setForeground(Color.WHITE);
		l5.setFont(new Font("Comic Sans MS", Font.BOLD, 22));l5.setForeground(Color.WHITE);
		l6.setFont(new Font("Comic Sans MS", Font.BOLD, 22));l6.setForeground(Color.WHITE);
		b1.setBackground(Color.BLACK);b1.setForeground(Color.WHITE);b1.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		b2.setBackground(Color.BLACK);b2.setForeground(Color.WHITE);b2.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		b3.setBackground(Color.BLACK);b3.setForeground(Color.WHITE);b3.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		b4.setBackground(Color.BLACK);b4.setForeground(Color.WHITE);b4.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		back.setBounds(10,690,100,30);bg.add(back);
		back.setBackground(Color.BLACK);back.setForeground(Color.WHITE);back.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		back.addActionListener(this);
		b1.addActionListener(this);b2.addActionListener(this);b3.addActionListener(this);b4.addActionListener(this);
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodcourt","root","database");
			st=con.createStatement();
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null, ex.getMessage());
		}
		try
		{
			rs=st.executeQuery("select * from employeeinfo");
			while(rs.next())
			{
				c1.addItem(rs.getString(1));
			}
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null,ex.getMessage());
		}
	}
	public static void main(String[] args) 
	{
		new empinfo();
	}

	public void actionPerformed(ActionEvent ar) 
	{
		if(ar.getSource()==b1)
		{
			try
			{
				rs=st.executeQuery("select * from employeeinfo where eid='"+c1.getSelectedItem()+"'");
				while(rs.next())
				{
					teid.setText(rs.getString(1));
					t2.setText(rs.getString(2));
					t3.setText(rs.getString(3));
					t4.setText(rs.getString(4));
					t5.setText(rs.getString(5));
				}
			}
			catch(Exception ex)
			{
				JOptionPane.showMessageDialog(null,ex.getMessage());
			}
		}
		if(ar.getSource()==b2)
		{
		try
			{
				st.executeUpdate("insert into employeeinfo values('"+teid.getText()+"','"+t2.getText()+"','"+t3.getText()+"','"+t4.getText()+"','"+t5.getText()+"')");
				JOptionPane.showMessageDialog(null,"Employee added successfully.");
				teid.setText("");
				t2.setText("");
				t3.setText("");
				t4.setText("");
				t5.setText("");
			}
		catch(Exception ex)
			{
				JOptionPane.showMessageDialog(null,ex.getMessage());
			} 
		}
		if(ar.getSource()==b3)
		{
			try
			{
				st.executeUpdate("delete from employeeinfo where eid='"+c1.getSelectedItem()+"'");
				JOptionPane.showMessageDialog(null,"Employee removed successfully.");
				teid.setText("");
				t2.setText("");
				t3.setText("");
				t4.setText("");
				t5.setText("");
			}
			catch(Exception ex)
			{
				JOptionPane.showMessageDialog(null,ex.getMessage());
			}
		}
		if(ar.getSource()==b4)
		{
			try
			{
				st.executeUpdate("update employeeinfo set Name='"+t2.getText()+"',Dutyinfo='"+t3.getText()+"',Shift='"+t4.getText()+"',Salary='"+t5.getText()+"' where eid='"+c1.getSelectedItem()+"'");
				JOptionPane.showMessageDialog(null,"Information updated successfully.");
				teid.setText("");
				t2.setText("");
				t3.setText("");
				t4.setText("");
				t5.setText("");
			}
			catch(Exception ex)
			{
				JOptionPane.showMessageDialog(null,ex.getMessage());
			}
		}
		if(ar.getSource()==back)
		{
			new adminoptions();
			this.hide();
		}
	}

}
