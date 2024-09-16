package com.election.mainapp.test;

public class Test2 extends Test4 implements TestI {

	String name;
	Boolean nameBol;
	boolean namebol;
	Integer  IntegerNum;
	int intNum;
	final Integer IntegerNum2 ;
	static String name2;
	String name3 = new String ();
	static Test2 test2;
	public String naming = "****";
	
	public static void main(String[] args) {
		
////		System.out.println(test2);
		Test2 test1 = new Test2();
		
		test1.name = "Momo";
		System.out.println(test1.name);
		Test2 test2 = test1 ;
		Test2 test3 = test2 ;
		System.out.println(test2.name);
		
		
		test1.name = "Ali";
		
		System.out.println(test1.name);
		System.out.println(test2.name);
		System.out.println(test3.name);
		
		
		
	
		
		
////		System.out.print(test2);
//		System.out.print("name  =  "+test2.name +"  ");
//		System.out.print("nameBol  =  "+test2.nameBol+"  ");
//		System.out.print("namebol  =  "+test2.namebol+"  ");
//		System.out.print("IntegerNum  =  "+test2.IntegerNum+"  ");
//		System.out.print("intNum  =  "+test2.intNum+"  ");
//		System.out.print("IntegerNum2  =  "+test2.IntegerNum2+"  ");
//		System.out.print("name2  =  "+test2.name2+"  ");
//		System.out.println("name3   =  "+test2.name3 +"  ");
//
//		String name;
//		Boolean nameBol;
//		boolean namebol;
//		Integer  IntegerNum;
//		int intNum;
//		final Integer IntegerNum2 ;
//		 String name2;
//		String name3 = new String ();
////		 Test2 test2;
//		
//		System.out.print("name  =  "+name +"  ");
//		System.out.print("nameBol  =  "+nameBol+"  ");
//		System.out.print("namebol  =  "+namebol+"  ");
//		System.out.print("IntegerNum  =  "+IntegerNum+"  ");
//		System.out.print("intNum  =  "+intNum+"  ");
//		System.out.print("IntegerNum2  =  "+IntegerNum2+"  ");
//		System.out.print("name2  =  "+name2+"  ");
//		System.out.println("name3   =  "+name3 +"  ");
//
//		
	}
	
	public Test2() {
		this.IntegerNum2 = null;

	}
	
	public Test2(Integer integerNum2) {
		this.IntegerNum2 = integerNum2;
		
		// TODO Auto-generated constructor stub
	}


	
	
//	public static void main(String[] args) {
//		
//		//prime()  number 50 and 100
//		
//		boolean result ;
//		for (int i = 50; i <= 100; i++) {
//			
//			result = isPrimNumber(i);
//			if(result) {
//			System.out.println(" is   =  "+i+ " prim number = " +result);
//			}
//		}
//		
//	}



	private static boolean isPrimNumber(int num) {
		
		
		for (int i = 1; i <=num; i++) {
			if(num != i && i!=1) {
				if(num%i == 0) {
					return false;
				}
			}
		}
		
		return true;
		
		//50/50    1
		//50/51    
		//50/51
		//50/53
		//50/95
		//50/96
		//50/97
		//50/100
		
		
	}
	
	
	interface Animal{
		
		public void show(int i);
		
	}
	
//	public static void main(String[] args) {
//		
//		Animal Animal = i-> {
//		System.out.println(i);
//		System.out.println(i);
//		System.out.println(i);
//		System.out.println(i);
//		System.out.println(i);
//		};
//		
//		Animal.show(99);
//		
//	}


	@Override
	public void method3() {
		
		
	}
}
