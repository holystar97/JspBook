package jspbook.ch04.CalcBean04;

public class CalcBean {
	private String num1;
	private String num2;
	private String operator;
	private String result;
	
	public CalcBean() {
		num1 ="";
		num2 ="";
		operator ="";
		result ="";
	}
	
	
	public String getNum1() {
		return num1;
	}
	public void setNum1(String num1) {
		this.num1 = num1;
	}
	public String getNum2() {
		return num2;
	}
	public void setNum2(String num2) {
		this.num2 = num2;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	
	public void setResult(String result) {
		this.result = result;
	}
	
	public String getResult() {
		return result;
	}
	
	public void calculate() {
		
		if(operator.equals("+")) {
			int n1 = Integer.parseInt(num1);
			int n2 = Integer.parseInt(num2);
			result = String.valueOf(n1 + n2);
		}
		else if(operator.equals("-")) {
			int n1 = Integer.parseInt(num1);
			int n2 = Integer.parseInt(num2);
			result = String.valueOf(n1 - n2);
		}
		else if(operator.equals("*")) {
			int n1 = Integer.parseInt(num1);
			int n2 = Integer.parseInt(num2);
			result = String.valueOf(n1 * n2);
		}
		else if(operator.equals("/")) {
			int n1 = Integer.parseInt(num1);
			int n2 = Integer.parseInt(num2);
			result =  String.valueOf(n1 / n2);
		} else {
			result = "0";
		}
		
	}
	
	
}
