select sum (tran_amt)
	from p1_cust_tran
	where tran_action = 'D'
select sum (tran_amt)
	from p1_cust_tran
	where tran_action = 'W'
select tran_action, count (*)
	from p1_cust_tran
	group by tran_action