import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

import javax.swing.*;


public class login2 extends JFrame implements ActionListener
{
	Connection con;
	Statement st;
	ResultSet rs;
	String UName;
	JLabel l1=new JLabel("Username:");
	JLabel l2=new JLabel("Password:");
	JTextField t1=new JTextField();
	JPasswordField t2=new JPasswordField();
	JButton b1=new JButton("Log in");
	JButton back=new JButton("BACK");
	public login2()
	{
		setTitle("Uncle Bob's");
		this.setLayout(null);
		this.setVisible(true);
		this.setSize(1366,768);
		setLayout(new BorderLayout());
		JLabel background=new JLabel(new ImageIcon("G:\\pics\\Untitled1.jpg"));
		add(background);
		l1.setForeground(Color.WHITE);
		l2.setForeground(Color.WHITE);
		l1.setBounds(543,300,150,30);background.add(l1);
		l1.setFont(new Font("Comic Sans MS", Font.BOLD, 20));
		t1.setBounds(670,300,100,30);background.add(t1);
		l2.setBounds(550,350,100,30);background.add(l2);
		l2.setFont(new Font("Comic Sans MS", Font.BOLD, 20));
		t2.setBounds(670,350,100,30);background.add(t2);
		b1.setBounds(610,400,100,30);background.add(b1);
		b1.setFont(new Font("Comic Sans MS", Font.BOLD, 16));
		b1.addActionListener(this);
		b1.setBackground(Color.BLACK);
		b1.setForeground(Color.WHITE);
		back.setBounds(10,690,100,30);background.add(back);
		back.setBackground(Color.BLACK);back.setForeground(Color.WHITE);back.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		back.addActionListener(this);
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodcourt","root","database");
			st=con.createStatement();
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null,ex.getMessage());
		}
	}
	public static void main(String[] args) 
	{
		new login2();
	}
	public void actionPerformed(ActionEvent ar) 
	{
		if(ar.getSource()==b1)
		{
			try
			{
				rs=st.executeQuery("select * from admins where UName='"+t1.getText()+"' and Password='"+t2.getText()+"'");
				if(rs.next())
				{
					UName=t1.getText();
					new adminoptions();
					this.hide();
				}
				else
				{
					JOptionPane.showMessageDialog(null,"Invalid Username/Password.");
				}
			}
			catch(Exception ex)
			{
				JOptionPane.showMessageDialog(null,ex.getMessage());
			}
		}
		if(ar.getSource()==back)
		{
			new First();
			this.hide();
		}
	}

}
