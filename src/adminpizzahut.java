import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.swing.*;

public class adminpizzahut extends JFrame implements ActionListener
{
	Connection con;
	Statement st;
	ResultSet rs;
	JLabel l1=new JLabel("Product id");
	JComboBox c1=new JComboBox();
	JLabel l2=new JLabel("Product id");
	JLabel l3=new JLabel("Category");
	JLabel l4=new JLabel("Product");
	JLabel l5=new JLabel("Price");
	JTextField t1=new JTextField();
	JTextField t2=new JTextField();
	JTextField t3=new JTextField();
	JTextField t4=new JTextField();
	JButton b1=new JButton("Details");
	JButton b2=new JButton("Add");
	JButton b3=new JButton("Remove");
	JButton b4=new JButton("Update");
	JButton back= new JButton("BACK");
	public adminpizzahut()
	{
		setTitle("Uncle Bob's");
		this.setLayout(null);
		this.setVisible(true);
		this.setSize(1366,768);
		setLayout(new BorderLayout());
		JLabel background=new JLabel(new ImageIcon("G:\\pics\\pizzahut2.jpg"));
		add(background);
		back.setBounds(10,10,100,30);background.add(back);
		l1.setBounds(585,465,90,20);background.add(l1);
		l1.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		c1.setBounds(675,465,100,20);background.add(c1);
		b1.setBounds(625,495,100,25);background.add(b1);
	    l2.setBounds(400,530,100,20);background.add(l2);
	    l2.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		t1.setBounds(400,550,100,20);background.add(t1);
		l3.setBounds(550,530,100,20);background.add(l3);
		l3.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
	    t2.setBounds(550,550,100,20);background.add(t2);
	    l4.setBounds(700,530,100,20);background.add(l4);
	  	l4.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
	  	t3.setBounds(700,550,100,20);background.add(t3);
	  	l5.setBounds(850,530,100,20);background.add(l5);
		l5.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		t4.setBounds(850,550,100,20);background.add(t4);
		b2.setBounds(570,590,100,25);background.add(b2);
		b3.setBounds(680,590,100,25);background.add(b3);
		b4.setBounds(625,625,100,25);background.add(b4);
		back.addActionListener(this);
	    b1.addActionListener(this);
	    b2.addActionListener(this);
	    b3.addActionListener(this);
	    b4.addActionListener(this);
	    back.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
	    b1.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
	    b2.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
	    b3.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
	    b4.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		b1.setBackground(Color.BLACK);b1.setForeground(Color.WHITE);
		b2.setBackground(Color.BLACK);b2.setForeground(Color.WHITE);
		b3.setBackground(Color.BLACK);b3.setForeground(Color.WHITE);
		b4.setBackground(Color.BLACK);b4.setForeground(Color.WHITE);
		back.setBackground(Color.BLACK);back.setForeground(Color.WHITE);
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
		try
		{
			rs=st.executeQuery("select * from pizzahut");
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
		new adminpizzahut();
	}
	public void actionPerformed(ActionEvent ar) 
	{
		if(ar.getSource()==back)
		{
			new adminoptions();
			this.hide();
		}
		if(ar.getSource()==b1)
		{
			try
			{
				rs=st.executeQuery("select * from pizzahut where id='"+c1.getSelectedItem()+"'");
				while(rs.next())
				{
					t1.setText(rs.getString(1));
					t2.setText(rs.getString(2));
					t3.setText(rs.getString(3));
					t4.setText(rs.getString(4));
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
				st.executeUpdate("insert into pizzahut values('"+t1.getText()+"','"+t2.getText()+"','"+t3.getText()+"','"+t4.getText()+"')");
				JOptionPane.showMessageDialog(null,"Item added successfully. Display will update later.");
				t1.setText("");
				t2.setText("");
				t3.setText("");
				t4.setText("");
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
				st.executeUpdate("delete from pizzahut where id='"+c1.getSelectedItem()+"'");
				JOptionPane.showMessageDialog(null,"Item removed successfully. Display will update later.");
				t1.setText("");
				t2.setText("");
				t3.setText("");
				t4.setText("");
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
				st.executeUpdate("update pizzahut set Category='"+t2.getText()+"',Product='"+t3.getText()+"',Price='"+t4.getText()+"' where id='"+c1.getSelectedItem()+"'");
				JOptionPane.showMessageDialog(null,"Database updated successfully. Display will update later.");
				t1.setText("");
				t2.setText("");
				t3.setText("");
				t4.setText("");
			}
			catch(Exception ex)
			{
				JOptionPane.showMessageDialog(null,ex.getMessage());
			}
		}
	}
}
