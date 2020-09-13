import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

import javax.swing.*;


public class dunkinmeal extends JFrame implements ActionListener
{
	float sub;
	float price,pricetotal,totalprice=0;
	int qty;
	Connection con;
	Statement smt;
	ResultSet rs;
	JButton back= new JButton("BACK");
	JLabel l1=new JLabel("Enter product no.");
	JLabel l2=new JLabel("Enter quantity");
	JLabel l3=new JLabel("Sub-total:");
	JLabel l4=new JLabel();
	JTextField t1=new JTextField();
	JTextField t2=new JTextField();
	JButton b1=new JButton("Buy more");
	JButton b2=new JButton("Done");
	JButton b3=new JButton("Proceed");
	public dunkinmeal()
	{
		setTitle("Uncle Bob's");
		this.setLayout(null);
		this.setVisible(true);
		this.setSize(1366,768);
		setLayout(new BorderLayout());
		JLabel background=new JLabel(new ImageIcon("G:\\pics\\dunkinmeal.jpg"));
		add(background);
		back.setBounds(10,10,100,30);background.add(back);
		l1.setBounds(420,460,130,20);background.add(l1);
		l1.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		t1.setBounds(555,460,100,20);background.add(t1);
		l2.setBounds(690,460,120,20);background.add(l2);
	    l2.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
	    t2.setBounds(805,460,100,20);background.add(t2);
		b1.setBounds(560,510,100,25);background.add(b1);
		b2.setBounds(690,510,100,25);background.add(b2);
		l3.setBounds(595,560,100,25);background.add(l3);
		l3.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		l4.setBounds(680,560,100,25);background.add(l4);
		l4.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		back.addActionListener(this);
	    b1.addActionListener(this);
	    b2.addActionListener(this);
	    back.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
	    b1.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
	    b2.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		b1.setBackground(Color.BLACK);b1.setForeground(Color.WHITE);
		b2.setBackground(Color.BLACK);b2.setForeground(Color.WHITE);
		back.setBackground(Color.BLACK);back.setForeground(Color.WHITE);
		b3.setBounds(625,680,100,25);background.add(b3);
		b3.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		b3.setBackground(Color.BLACK);b3.setForeground(Color.WHITE);
		b3.addActionListener(this);
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodcourt","root","database");
			smt=con.createStatement();
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null,ex.getMessage());
		}
	}
	public static void main(String[] args) 
	{
		new dunkinmeal();
	}
	public void actionPerformed(ActionEvent ar) 
	{
		if(ar.getSource()==back)
		{
			new dunkin();
			this.hide();
		}
		if(ar.getSource()==b1)
		{
			qty=Integer.parseInt(t2.getText());
			try
			{
				rs=smt.executeQuery("select * from dunkinmeal where SNo='"+t1.getText()+"'");
				if(rs.next())
				{
					price=(Float.parseFloat(rs.getString(3)));
					pricetotal=price*qty;
					totalprice=totalprice+pricetotal;
					t1.setText("");
					t2.setText("");
				}
				else
				{
					JOptionPane.showMessageDialog(null,"Invalid product number. Restart again.");
					new dunkin();
				}
			}
			catch(Exception ex)
			{
				JOptionPane.showMessageDialog(null,ex.getMessage());
			}
		}
		if(ar.getSource()==b2)
		{
			qty=Integer.parseInt(t2.getText());
			try
			{
				rs=smt.executeQuery("select * from dunkinmeal where SNo='"+t1.getText()+"'");
				if(rs.next())
				{
					price=(Float.parseFloat(rs.getString(3)));
					pricetotal=price*qty;
					totalprice=totalprice+pricetotal;
					t1.setText("");
					t2.setText("");
					l4.setText(String.valueOf(totalprice));
				}
				else
				{
					JOptionPane.showMessageDialog(null,"Invalid id. Restart again");
					new dunkin();
				}
			}
			catch(Exception ex)
			{
				JOptionPane.showMessageDialog(null,ex.getMessage());
			}
		}
		if(ar.getSource()==b3)
		{
			sub=Float.parseFloat(l4.getText());
			new dunkinbill(sub);
			this.hide();
		}
	}

}
