package com.neosoft;

 class MinimumAccountBalance extends Exception {

	private static final long serialVersionUID = 1L;
	String message;

	public MinimumAccountBalance(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return message;
	}

}

public class Account extends RuntimeException {


	private static final long serialVersionUID = 1L;

	static int acc_balance = 25000;

	static String sms = "";

	public static String withdraw(int amount) {
		try {

			if (acc_balance < amount) {
				throw new MinimumAccountBalance("Insufficient funds ! your Current balance is " + acc_balance);
			} else {
				acc_balance=acc_balance-amount;
				sms = "withdraw amount success : " + amount;
				
			}
		} catch (MinimumAccountBalance e) {
			sms = e.message;
		}

		return sms;

	}

	public static int showBalance() {

		return acc_balance;
	}

}
