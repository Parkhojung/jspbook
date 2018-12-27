package jspbook.exer.ch04;

public class Calc {
	private int res;
	Calc(int num1, int num2, String operator){
		if(operator.equals("+"))
			res= (num1+num2);
		if(operator.equals("-"))
			res= (num1-num2);
		if(operator.equals("*"))
			res= (num1*num2);
		if(operator.equals("/"))
			res= (num1/num2);
	}
	
	int getRes() {
		return res;
	}
}
