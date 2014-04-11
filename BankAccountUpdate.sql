update p1_master_acct
	set min_bal = 100, min_bal_fee = 20, over_draft_fee = 20
	where min_bal = 0