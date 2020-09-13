import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;

public class pizzahutbill extends JFrame implements ActionListener 
{
	float a,b,c,d,e,f;
	static float sub;
	float total;
	JLabel head1=new JLabel("Uncle Bob's Food Court");
	JLabel head2=new JLabel("Bill Summary");
	JLabel l1=new JLabel("Sub-total:");
	JLabel l2=new JLabel();
	JLabel l3=new JLabel("VAT @ 13% on sub-total:");
	JLabel l4=new JLabel();
	JLabel l5=new JLabel("Govt. Surcharge 10% on VAT:");
	JLabel l6=new JLabel();
	JLabel l7=new JLabel("Service Tax 14% on [40% of sub-total]:");
	JLabel l8=new JLabel();
	JLabel l9=new JLabel("S.B. Cess 0.5% on [40% of sub-total]:");
	JLabel l10=new JLabel();
	JLabel l11=new JLabel("K.K. Cess 0.5% on [40% of sub-total]:");
	JLabel l12=new JLabel();
	JLabel l13=new JLabel("Amount payable:");
	JLabel l14=new JLabel();
	JButton b1=new JButton("Finish");
	public pizzahutbill(float g)
	{
		sub=g;
		a=(float) (0.13*sub);
		b=(float) (0.1*a);
		c=(float) (0.4*sub);
		d=(float) (0.14*c);
		e=(float) (0.005*c);
		f=(float) (0.005*c);
		total=sub+a+b+d+e+f;
		setTitle("Uncle Bob's");
		this.setLayout(null);
		this.setVisible(true);
		this.setSize(1366,768);
		setLayout(new BorderLayout());
		JLabel background=new JLabel(new ImageIcon("G:\\pics\\pizzahut.jpg"));
		add(background);
		head1.setBounds(415,50,600,50);background.add(head1);
		head2.setBounds(580,130,300,40);background.add(head2);
		l1.setBounds(600,200,150,30);background.add(l1);
		l2.setText(String.valueOf(g));
		l2.setBounds(700,200,100,30);background.add(l2);
		l3.setBounds(485,250,200,30);background.add(l3);
		l4.setText(String.valueOf(a));
		l4.setBounds(700,250,100,30);background.add(l4);
		l5.setBounds(455,300,250,30);background.add(l5);
		l6.setText(String.valueOf(b));
		l6.setBounds(700,300,100,30);background.add(l6);
		l7.setBounds(380,350,300,30);background.add(l7);
		l8.setText(String.valueOf(d));
		l8.setBounds(700,350,100,30);background.add(l8);
		l9.setBounds(387,400,300,30);background.add(l9);
		l10.setText(String.valueOf(e));
		l10.setBounds(700,400,100,30);background.add(l10);
		l11.setBounds(390,450,300,30);background.add(l11);
		l12.setText(String.valueOf(f));
		l12.setBounds(700,450,100,30);background.add(l12);
		l13.setBounds(560,500,150,30);background.add(l13);
		l14.setText(String.valueOf(total));
		l14.setBounds(700,500,100,30);background.add(l14);
		l1.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		l2.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		l3.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		l4.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		l5.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		l6.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		l7.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		l8.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		l9.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		l10.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		l11.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		l12.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		l13.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		l14.setFont(new Font("Comic Sans MS", Font.BOLD, 15));
		head1.setFont(new Font("Bodoni MT Black", Font.BOLD, 40));
		head2.setFont(new Font("Harrington", Font.BOLD, 30));
		b1.setBounds(625,600,100,30);background.add(b1);
		b1.setFont(new Font("Comic Sans MS", Font.PLAIN, 16));
		b1.setBackground(Color.BLACK);b1.setForeground(Color.WHITE);
		b1.addActionListener(this);
	}
	public static void main(String[] args) 
	{
		new pizzahutbill(sub);
	}
	public void actionPerformed(ActionEvent ar) 
	{
		if(ar.getSource()==b1)
		{
			JOptionPane.showMessageDialog(null,"Confirm to finish the order.");
			new ChainList2(null);
			this.hide();
		}
	}
}
