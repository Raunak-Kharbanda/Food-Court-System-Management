import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;

import javax.swing.*;


public class Uncle_Bobs extends JFrame 
{
	JProgressBar p1=new JProgressBar();
	JLabel l1=new JLabel("Loading Uncle Bob's System");
	JLabel l2=new JLabel();
	public Uncle_Bobs()
	{
		setTitle("Uncle Bob's");
		this.setVisible(true);
		this.setLayout(null);
		this.setSize(1366,768);
		setLayout(new BorderLayout());
		JLabel background=new JLabel(new ImageIcon("G:\\pics\\Untitled1.jpg"));
		add(background);
		l1.setForeground(Color.WHITE);
		l2.setForeground(Color.WHITE);
		l1.setBounds(535,310,350,40);background.add(l1);
		l1.setFont(new Font("Comic Sans MS", Font.BOLD, 22));
		p1.setBounds(633,374,100,20);background.add(p1);
		p1.setForeground(Color.GREEN);
		l2.setBounds(595,420,250,50);background.add(l2);
		l2.setFont(new Font("Comic Sans MS", Font.BOLD, 22));
		
		try
		{
			for(int y=1;y<=100;y++)
			{
				p1.setValue(y);
				l2.setText(y+"% complete...");
				Thread.sleep(30);
				if(y==100)
				{
					JOptionPane.showMessageDialog(null,"Proceed.");
					new First();
					this.hide();
				}
			}
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null,ex.getMessage());
		}
	}
	public static void main(String[] args) 
	{
		new Uncle_Bobs();
	}

}
