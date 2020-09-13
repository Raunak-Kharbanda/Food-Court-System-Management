import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import javax.swing.*;

public class adminoptions extends JFrame implements ActionListener
{
	JLabel l1=new JLabel("Select your choice of access.");
	JLabel l2=new JLabel("Select your preference.");
    JComboBox c1=new JComboBox();
    JComboBox c2=new JComboBox();
	JButton b1=new JButton("Next");
	JButton b2=new JButton("Next");
	JButton back=new JButton("Log Out");
	public adminoptions()
	{
		setTitle("Uncle Bob's");
		this.setLayout(null);
		this.setVisible(true);
		this.setSize(1366,768);
		setLayout(new BorderLayout());
		JLabel bg=new JLabel(new ImageIcon("G:\\pics\\Untitled1.jpg"));
		add(bg);
		l1.setBounds(480,200,380,30);bg.add(l1);
		c1.setBounds(590,250,150,30);bg.add(c1);
		c1.addItem("Employee Information");
		c1.addItem("Menu");
		b1.setBounds(600,300,130,30);bg.add(b1);
		l2.setBounds(520,360,300,30);bg.add(l2);
		c2.setBounds(590,410,150,30);bg.add(c2);
		c2.addItem("KFC");c2.addItem("McDonald's");c2.addItem("Domino's");c2.addItem("Pizza Hut");c2.addItem("Starbucks");c2.addItem("Barista");
		c2.addItem("OvenFresh");c2.addItem("Nando's");c2.addItem("Dunkin Donuts");c2.addItem("Ben & Jerry's");c2.addItem("The Buffet");
		b2.setBounds(600,460,130,30);bg.add(b2);
		l1.setFont(new Font("Comic Sans MS", Font.BOLD, 25));l1.setForeground(Color.WHITE);
		l2.setFont(new Font("Comic Sans MS", Font.BOLD, 24));l2.setForeground(Color.WHITE);
		c1.setFont(new Font("Comic Sans MS", Font.BOLD, 12));c1.setForeground(Color.WHITE);c1.setBackground(Color.BLACK);
		c2.setFont(new Font("Comic Sans MS", Font.BOLD, 12));c2.setForeground(Color.WHITE);c2.setBackground(Color.BLACK);
		b1.setBackground(Color.BLACK);b1.setForeground(Color.WHITE);b1.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		b2.setBackground(Color.BLACK);b2.setForeground(Color.WHITE);b2.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		b1.addActionListener(this);
		b2.addActionListener(this);
		back.setBounds(10,690,100,30);bg.add(back);
		back.setBackground(Color.BLACK);back.setForeground(Color.WHITE);back.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		back.addActionListener(this);
		l2.setVisible(false);c2.setVisible(false);b2.setVisible(false);
	}
	public static void main(String[] args) 
	{
	new adminoptions();	
	}

	public void actionPerformed(ActionEvent ar) 
	{
		if(ar.getSource()==b1)
		{
			if(c1.getSelectedItem()=="Employee Information")
			{
				new empinfo();
				this.hide();
			}
			else
			{
				l2.setVisible(true);c2.setVisible(true);b2.setVisible(true);
			}
		}
		if(ar.getSource()==b2)
		{
			if(c2.getSelectedItem()=="KFC")
			{
				new adminkfc();
			}
			if(c2.getSelectedItem()=="McDonald's")
			{
				new adminmcd();
			}
			if(c2.getSelectedItem()=="Domino's")
			{
				new admindominos();
			}
			if(c2.getSelectedItem()=="Pizza Hut")
			{
				new adminpizzahut();
			}
			if(c2.getSelectedItem()=="Starbucks")
			{
				new adminstarbucks();
			}
			if(c2.getSelectedItem()=="Barista")
			{
				new adminbarista();
			}
			if(c2.getSelectedItem()=="OvenFresh")
			{
				new adminovenfresh();
			}
			if(c2.getSelectedItem()=="Nando's")
			{
				new adminnandos();
			}
			if(c2.getSelectedItem()=="Dunkin Donuts")
			{
				new admindunkin();
			}
			if(c2.getSelectedItem()=="Ben & Jerry's")
			{
				new adminben();
			}
			if(c2.getSelectedItem()=="The Buffet")
			{
				new adminbuffet();
			}
			this.hide();
		}
		if(ar.getSource()==back)
		{
			new First();
			this.hide();
		}
	}
}
