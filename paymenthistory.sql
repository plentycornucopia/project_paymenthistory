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