select count (*)
	from p1_master_acct
	where acct_desc like 'SAV%s'
select count (*)
	from p1_master_acct
	where acct_type = 'TEST'
select count (*)
	from p1_master_acct
	where acct_desc like 'CHECK%s'