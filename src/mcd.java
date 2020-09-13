import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

import javax.swing.*;


public class mcd extends JFrame implements ActionListener
{
	float sub;
	float price,pricetotal,totalprice=0;
	int qty;
	Connection con;
	Statement smt;
	ResultSet rs;
	JButton back= new JButton("BACK");
	JLabel l1=new JLabel("Enter product id");
	JLabel l2=new JLabel("Enter quantity");
	JLabel l3=new JLabel("Sub-total:");
	JLabel l4=new JLabel();
	JTextField t1=new JTextField();
	JTextField t2=new JTextField();
	JButton b0=new JButton("COMBOS/MEALS");
	JButton b1=new JButton("Buy more");
	JButton b2=new JButton("Done");
	JButton b3=new JButton("Proceed");
	public mcd()
	{
		setTitle("Uncle Bob's");
		this.setLayout(null);
		this.setVisible(true);
		this.setSize(1366,768);
		setLayout(new BorderLayout());
		JLabel background=new JLabel(new ImageIcon("G:\\pics\\mcd2.jpg"));
		add(background);
		back.setBounds(10,10,100,30);background.add(back);
		b0.setBounds(600,465,130,40);background.add(b0);
		l1.setBounds(415,530,120,20);background.add(l1);
		l1.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		t1.setBounds(545,530,100,20);background.add(t1);
		l2.setBounds(680,530,120,20);background.add(l2);
	    l2.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
	    t2.setBounds(795,530,100,20);background.add(t2);
		b1.setBounds(550,580,100,25);background.add(b1);
		b2.setBounds(680,580,100,25);background.add(b2);
		l3.setBounds(585,630,100,25);background.add(l3);
		l3.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		l4.setBounds(670,630,100,25);background.add(l4);
		l4.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
		back.addActionListener(this);
	    b0.addActionListener(this);
	    b1.addActionListener(this);
	    b2.addActionListener(this);
	    back.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
	    b1.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
	    b2.setFont(new Font("Comic Sans MS", Font.PLAIN, 15));
	    b0.setFont(new Font("Comic Sans MS", Font.PLAIN, 11));
		b1.setBackground(Color.BLACK);b1.setForeground(Color.WHITE);
		b2.setBackground(Color.BLACK);b2.setForeground(Color.WHITE);
		b0.setBackground(Color.BLACK);b0.setForeground(Color.WHITE);
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
		new mcd();
	}
	public void actionPerformed(ActionEvent ar) 
	{
		if(ar.getSource()==back)
		{
			new ChainList2(null);
			this.hide();
		}
		if(ar.getSource()==b0)
		{
			new mcdmeal();
			this.hide();
		}
		if(ar.getSource()==b1)
		{
			qty=Integer.parseInt(t2.getText());
			try
			{
				rs=smt.executeQuery("select * from mcd where id='"+t1.getText()+"'");
				if(rs.next())
				{
					price=(Float.parseFloat(rs.getString(4)));
					pricetotal=price*qty;
					totalprice=totalprice+pricetotal;
					t1.setText("");
					t2.setText("");
				}
				else
				{
					JOptionPane.showMessageDialog(null,"Invalid id. Restart again");
					new ChainList2(null);
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
				rs=smt.executeQuery("select * from mcd where id='"+t1.getText()+"'");
				if(rs.next())
				{
					price=(Float.parseFloat(rs.getString(4)));
					pricetotal=price*qty;
					totalprice=totalprice+pricetotal;
					t1.setText("");
					t2.setText("");
					l4.setText(String.valueOf(totalprice));
				}
				else
				{
					JOptionPane.showMessageDialog(null,"Invalid id. Restart again");
					new ChainList2(null);
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
			new mcdbill(sub);
			this.hide();
		}
	}

}
