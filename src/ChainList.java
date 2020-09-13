import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import javax.swing.*;


public class ChainList extends JFrame implements ActionListener
{
	String UName;
	Connection con;
	Statement st;
	ResultSet rs;
	JLabel l1=new JLabel("Welcome to Uncle Bob's");
	JLabel l2=new JLabel("Cashier:");
	JLabel l3=new JLabel();
	JButton b1=new JButton("KFC");
	JButton b2=new JButton("McDonald's");
	JButton b3=new JButton("Domino's");
	JButton b4=new JButton("Pizza Hut");
	JButton b5=new JButton("Starbucks");
	JButton b6=new JButton("Barista");
	JButton b7=new JButton("Ovenfresh");
	JButton b8=new JButton("Nando's");
	JButton b9=new JButton("Dunkin Donuts");
	JButton b10=new JButton("The Buffet");
	JButton b11=new JButton("Ben and Jerry's");
	JButton back=new JButton("Log Out");
	public ChainList(String a)
	{
		UName=a;
		setTitle("Uncle Bob's");
		this.setLayout(null);
		this.setVisible(true);
		this.setSize(1366,768);
		setLayout(new BorderLayout());
		JLabel background=new JLabel(new ImageIcon("G:\\pics\\Untitled1.jpg"));
		add(background);
		l1.setBounds(440,100,500,70);background.add(l1);
		l1.setFont(new Font("Chiller", Font.BOLD, 60));
		l2.setBounds(570,200,120,40);background.add(l2);
		l2.setFont(new Font("Times New Roman", Font.BOLD, 25));
		l3.setText(a);
		l3.setBounds(670,200,100,40);background.add(l3);
		l3.setFont(new Font("Times New Roman", Font.BOLD, 25));
		l1.setForeground(Color.WHITE);
		l2.setForeground(Color.WHITE);
		l3.setForeground(Color.WHITE);
		b1.setBounds(300,300,150,40);background.add(b1);
		b1.setFont(new Font("Comic Sans MS", Font.BOLD, 18));
		b2.setBounds(500,300,150,40);background.add(b2);
		b2.setFont(new Font("Comic Sans MS", Font.BOLD, 18));
		b3.setBounds(700,300,150,40);background.add(b3);
		b3.setFont(new Font("Comic Sans MS", Font.BOLD, 18));
		b4.setBounds(900,300,150,40);background.add(b4);
		b4.setFont(new Font("Comic Sans MS", Font.BOLD, 18));
		b5.setBounds(300,360,150,40);background.add(b5);
		b5.setFont(new Font("Comic Sans MS", Font.BOLD, 18));
		b6.setBounds(500,360,150,40);background.add(b6);
		b6.setFont(new Font("Comic Sans MS", Font.BOLD, 18));
		b7.setBounds(700,360,150,40);background.add(b7);
		b7.setFont(new Font("Comic Sans MS", Font.BOLD, 18));
		b8.setBounds(900,360,150,40);background.add(b8);
		b8.setFont(new Font("Comic Sans MS", Font.BOLD, 18));
		b9.setBounds(400,420,150,40);background.add(b9);
		b9.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		b10.setBounds(600,420,150,40);background.add(b10);
		b10.setFont(new Font("Comic Sans MS", Font.BOLD, 13));
		b11.setBounds(800,420,150,40);background.add(b11);
		b11.setFont(new Font("Comic Sans MS", Font.BOLD, 13));
		back.setBounds(10,690,100,30);background.add(back);
		back.setFont(new Font("Comic Sans MS", Font.BOLD, 13));
		b1.addActionListener(this);
		b2.addActionListener(this);
		b3.addActionListener(this);
		b4.addActionListener(this);
		b5.addActionListener(this);
		b6.addActionListener(this);
		b7.addActionListener(this);
		b8.addActionListener(this);
		b9.addActionListener(this);
		b10.addActionListener(this);
		b11.addActionListener(this);
		back.addActionListener(this);
		b1.setBackground(Color.BLACK);b1.setForeground(Color.WHITE);
		b2.setBackground(Color.BLACK);b2.setForeground(Color.WHITE);
		b3.setBackground(Color.BLACK);b3.setForeground(Color.WHITE);
		b4.setBackground(Color.BLACK);b4.setForeground(Color.WHITE);
		b5.setBackground(Color.BLACK);b5.setForeground(Color.WHITE);
		b6.setBackground(Color.BLACK);b6.setForeground(Color.WHITE);
		b7.setBackground(Color.BLACK);b7.setForeground(Color.WHITE);
		b8.setBackground(Color.BLACK);b8.setForeground(Color.WHITE);
		b9.setBackground(Color.BLACK);b9.setForeground(Color.WHITE);
		b10.setBackground(Color.BLACK);b10.setForeground(Color.WHITE);
		b11.setBackground(Color.BLACK);b11.setForeground(Color.WHITE);
		back.setBackground(Color.BLACK);back.setForeground(Color.WHITE);
	}
	public static void main(String[] args) 
	{
		new ChainList(null);
	}
	public void actionPerformed(ActionEvent ar) 
	{
		if(ar.getSource()==b1)
		{
			new kfc();
			this.hide();
		}
		if(ar.getSource()==b2)
		{
			new mcd();
			this.hide();
		}
		if(ar.getSource()==b3)
		{
			new dominos();
			this.hide();
		}
		if(ar.getSource()==b4)
		{
			new pizzahut();
			this.hide();
		}
		if(ar.getSource()==b5)
		{
			new starbucks();
			this.hide();
		}
		if(ar.getSource()==b6)
		{
			new barista();
			this.hide();
		}
		if(ar.getSource()==b7)
		{
			new oven();
			this.hide();
		}
		if(ar.getSource()==b8)
		{
			new nando();
			this.hide();
		}
		if(ar.getSource()==b9)
		{
			new dunkin();
			this.hide();
		}
		if(ar.getSource()==b10)
		{
			new buffet();
			this.hide();
		}
		if(ar.getSource()==b11)
		{
			new ben();
			this.hide();
		}
		if(ar.getSource()==back)
		{
			new First();
			this.hide();
		}
	}
}
