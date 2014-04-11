CREATE TABLE p1_customer
	(
	cust_id			int					primary key,
	lname			varchar (30)		null,
	fname			varchar (15)		null,
	add1			varchar (25)		null,
	city			varchar (25)		null,
	state			char (02)			null,
	zip				char (09)			null,
	h_phone			varchar (10)		null,
	c_phone			varchar (10)		null,
	email			varchar (30)		null,
	curr_bal		money				default 0,
	tot_deposit		money				default 0,
	tot_withdrawal	money				default 0,
	tot_interest	money				default 0,
	tot_fee			money				default 0,
	date_opened		smalldatetime		default getdate(),
	date_closed		smalldatetime		null,
	status			char (5)			default 'n',
	active			char (1)			default 'a'
	)
CREATE TABLE p1_cust_accts
	(
	cust_id			int					not null,
	acct_no			int					not null,
	date_opened		smalldatetime		null,
	date_closed		smalldatetime		null,
	open_bal		money				default 0,
	curr_bal		money				default 0,
	tot_dep			money				default 0,
	tot_with		money				default 0,
	tot_int			money				default 0,
	tot_fee			money				default 0,
	acct_status		char (01)			default 'n'
	)
CREATE TABLE p1_cust_tran
	(
	tran_id			int					primary key,
	cust_id			int					not null,
	acct_no			int					not null,
	tran_date		smalldatetime		null,
	tran_type		varchar (04)		null,
	tran_action		char (01)			null,
	check_date		smalldatetime		null,
	tran_amt		money				default 0,
	tran_status		char (02)			null
	)
CREATE TABLE p1_master_acct
	(
	acct_no			int					primary key,
	acct_type		char (04)			not null,
	acct_desc		varchar (30)		null,
	min_bal			money				default 0,
	min_bal_fee		money				default 0,
	over_draft_fee	money				default 0,
	tran_max		smallmoney			null,
	date_opened		smalldatetime		default getdate(),
	date_closed		smalldatetime		null,
	active			char (01)			default 'a'
	)
CREATE TABLE p1_state_table
	(
	state			char (02)			primary key,
	state_name		varchar (30)		null,
	state_funds		numeric (6, 2)		default 0
	)

