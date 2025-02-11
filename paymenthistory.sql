/* ACCOUNT HISTORY */				
CREATE TABLE IF NOT EXISTS accounthistory (				
ID        SERIAL        ,				
accounthistory_ID	VARCHAR(30)	NOT NULL	UNIQUE	,
accounthistory_attributes	JSON	NULL		,
accounthistory_reference	VARCHAR(30)	NOT NULL		,
accounthistory_reportdate	TIMESTAMP	NOT NULL		,
accounthistory_creditorname	VARCHAR(255)	NOT NULL		,
accounthistory_account	VARCHAR(30)	NOT NULL		,
accounthistory_category	VARCHAR(255)	NOT NULL		,
accounthistory_cra1	bytea	NULL		,
accounthistory_cra2	bytea	NULL		,
accounthistory_cra3	bytea	NULL		,
accounthistory_access	VARCHAR(30)	NOT NULL	DEFAULT 'public'	,
accounthistory_status	VARCHAR(30)	NOT NULL	DEFAULT 'active'	,
user_ID	VARCHAR(30)	NOT NULL		,
app_ID	VARCHAR(30)	NOT NULL		,
event_ID	VARCHAR(30)	NOT NULL		,
process_ID	VARCHAR(30)	NOT NULL		,
time_started	TIMESTAMP	NOT NULL	DEFAULT NOW()	,
time_updated	TIMESTAMP	NOT NULL	DEFAULT NOW()	,
time_finished	TIMESTAMP	NOT NULL	DEFAULT NOW()	,
active	INT	NOT NULL	DEFAULT 1	,
);				
				
SELECT * FROM	accounthistory;			
DROP TABLE	accounthistory;			
				
CREATE SEQUENCE	accounthistory_sequence;			
ALTER SEQUENCE	accounthistory_sequence RESTART WITH 8301;			
ALTER TABLE	accounthistory ALTER COLUMN ID SET DEFAULT nextval('accounthistory_sequence');			
				
ALTER TABLE	ALTER TABLE accounthistory ADD FOREIGN KEY (user_ID) REFERENCES user (user_ID);			
ALTER TABLE	ALTER TABLE accounthistory ADD FOREIGN KEY (app_ID) REFERENCES app (app_ID);			
				
INSERT INTO accounthistory (
accounthistory_ID,
accounthistory_attributes,
accounthistory_reference,
accounthistory_reportdate,
accounthistory_creditorname,
accounthistory_account,
accounthistory_category,
accounthistory_cra1,
accounthistory_cra2,
accounthistory_cra3,
accounthistory_access,
accounthistory_status,
user_ID,
app_ID,
event_ID,
process_ID,
active
) VALUES (
'score_54663',
'{}',
'30 Characters',
'05/24/2024',
'30 Characters',
'255 Characters',
'255 Characters',
'{}',
'{}',
'{}',
'access_54663',
'status_54663',
'user_54663',
'app_54663',
'event_54663',
'process_54663',
1
);

SELECT * FROM accounthistory;

/* HERE'S AN EXAMPLE OF WHAT THE FIRST SET OF RECORDS WOULD LOOK LIKE FROM THE REFERENCE FILE IN THE REPOSITORY "file to be parsed - account history.html" */
INSERT INTO accounthistory (accounthistory_reference,accounthistory_reportdate,accounthistory_creditorname,accounthistory_account,accounthistory_category,accounthistory_cra1,accounthistory_cra2,accounthistory_cra3,accounthistory_id,user_id,app_id,event_id,process_id) VALUES  ('BR48468442','12/03/2024','NR/SMS/CAL','100','Account #:','C123686148399','C5786148399','X6586148399','history_45698BR4846844222','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Account Type:','Mortgage','Mortgage','Mortgage','history_45698BR4846844223','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Account Type - Detail:','Conventional real estate mortgage','Conventional real estate mortgage','Real estate mortgage','history_45698BR4846844224','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Bureau Code:','Individual','Individual','Individual','history_45698BR4846844225','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Account Status:','Open','Open','Open','history_45698BR4846844226','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Monthly Payment:','2822','2822','2822','history_45698BR4846844227','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Date Opened:','05/16/2023','05/01/2023','05/01/2023','history_45698BR4846844228','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Balance:','216254','216254','216254','history_45698BR4846844229','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','No. of Months (terms):','1360','C3760','0','history_45698BR48468442210','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','High Credit:','210000','210000','210000','history_45698BR48468442211','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Credit Limit:','0','0','0','history_45698BR48468442212','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Past Due:','2912','2912','2912','history_45698BR48468442213','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Payment Status:','Late 60 Days','Late 60 Days','Late 60 Days','history_45698BR48468442214','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Last Reported:','09/30/2024','09/30/2024','09/01/2024','history_45698BR48468442215','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Comments:','-','-','Real Estate Mortgage |Conventional mortgage','history_45698BR48468442216','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Date Last Active:','09/30/2024','09/01/2024','08/01/2024','history_45698BR48468442217','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Date of Last Payment:','07/31/2024','07/31/2024','08/01/2024','history_45698BR48468442218','user_8301','app_8301','event_8301','proc_8301'),
('BR48468442','12/03/2024','NR/SMS/CAL','100','Two-Year payment history','{"timeline":[{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Sep","year":"24","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Aug","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Jul","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Jun","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"May","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Apr","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Mar","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Feb","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Jan","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Dec","year":"23","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Nov","year":"23","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Oct","year":"23","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Sep","year":"23","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Aug","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Jul","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Jun","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"May","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Apr","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Mar","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Feb","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Jan","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Dec","year":"22","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Nov","year":"22","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"TransUnion","month":"Oct","year":"22","rating":""}]}','{"timeline":[{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Sep","year":"24","rating":"60"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Aug","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Jul","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Jun","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"May","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Apr","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Mar","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Feb","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Jan","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Dec","year":"23","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Nov","year":"23","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Oct","year":"23","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Sep","year":"23","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Aug","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Jul","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Jun","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"May","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Apr","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Mar","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Feb","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Jan","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Dec","year":"22","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Nov","year":"22","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Experian","month":"Oct","year":"22","rating":""}]}','{"timeline":[{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Sep","year":"24","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Aug","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Jul","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Jun","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"May","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Apr","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Mar","year":"24","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Feb","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Jan","year":"24","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Dec","year":"23","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Nov","year":"23","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Oct","year":"23","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Sep","year":"23","rating":"OK"},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Aug","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Jul","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Jun","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"May","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Apr","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Mar","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Feb","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Jan","year":"23","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Dec","year":"22","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Nov","year":"22","rating":""},{"reference":"M59579553","creditor":"NR/SMS/CAL","account":"100","agency":"Equifax","month":"Oct","year":"22","rating":""}]}','history_45698BR48468442219','user_8301','app_8301','event_8301','proc_8301')returning *;
