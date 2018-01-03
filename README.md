# bank_tech_test
## Instructions
```
  [1] pry > require './lib/bank'
  => true

  [2] pry > bank = Bank.new
  => #<Bank:0x00007ff123031e40 @account=Account, @accounts=[], @statement=#<Statement:0x00007ff123031e18 @statment_log=["   date   ||  credit  || debit  || Amount  || Balance "]>>

  [3] pry > customer = Customer.new('jj')
  => #<Customer:0x00007ff12300a250 @name="jj">

  [4] pry > bank.new_account(customer,'0000')
  => [#<Account:0x00007ff1242f66e8 @balance=0, @owner=#<Customer:0x00007ff12300a250 @name="jj">, @password="0000", @transaction=Transaction, @transactions=[]>]

  [5] pry > bank.deposit(1000,customer,'0000')
    [#<Transaction:0x00007ff123259fd8 @amount=1000, @balance=1000, @date="01/03/18", @type="debit">]

  [6] pry(main)> bank.withdraw(500, customer, '0000')
  => [#<Transaction:0x00007ff123259fd8 @amount=1000, @balance=1000, @date="01/03/18", @type="debit">,
      #<Transaction:0x00007ff12434e3c0 @amount=500, @balance=500, @date="01/03/18", @type="credit">]
  [7] pry(main)> bank.account_statement(customer, '0000')
```
```
date   ||  credit  || debit  || Amount  || Balance
01/03/18 || 500.00  ||  || 500.00
01/03/18 ||   || 1000.00 || 1000.00
```

## Features:
```
As a customer
So that I can keep my money safe
I want to open a bank account

As a customer
So that I can save some money in my account
I want to make a deposit

As a customer
So that I can spend some money from my account
I want to withdraw money

As a customer
So that i know that my money is safe
I need to have a password in order to make transaction

As a customer
So that I can make a transaction
I need to provide the right password

As a customer
So that I keep track of my spending
I want to see my bank account statement

```
