package jspbook.ch04;

public class RandomSum {

	int sum=0;
	
	public RandomSum(int start,int end) {
		for(int i=start;i<=end;i++) {
			sum+=i;
		}
	}
	
	public int getResult() {
		return sum;
	}
	
	
	
}
