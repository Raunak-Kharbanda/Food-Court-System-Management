import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;

public class First extends JFrame implements ActionListener
{
	JLabel l1=new JLabel("Select your account type");
	JButton b1=new JButton("Cashier");
	JButton b2=new JButton("Admin");
	public First()
	{
		setTitle("Uncle Bob's");
		this.setLayout(null);
		this.setVisible(true);
		setLayout(new BorderLayout());
		JLabel background=new JLabel(new ImageIcon("G:\\pics\\Untitled1.jpg"));
		add(background);
		this.setSize(1366,768);
		l1.setForeground(Color.WHITE);
		l1.setBounds(515,325,350,30);background.add(l1);
		l1.setFont(new Font("Comic Sans MS", Font.BOLD, 25));
		b1.setBounds(560,380,100,30);background.add(b1);
		b1.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		b2.setBounds(680,380,100,30);background.add(b2);
		b2.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		b1.addActionListener(this);
		b2.addActionListener(this);
		b1.setBackground(Color.BLACK);
		b1.setForeground(Color.WHITE);
		b2.setBackground(Color.BLACK);
		b2.setForeground(Color.WHITE);
	}
	public static void main(String[] args) 
	{
		new First();
	}
	public void actionPerformed(ActionEvent ar) 
	{
		if(ar.getSource()==b1)
		{
		new Login();
		this.hide();
		}
		if(ar.getSource()==b2)
		{
			new login2();
			this.hide();
		}
	}
}
