/* SET UP TABLE */
CREATE TABLE IF NOT EXISTS accounthistory (		
Reference	VARCHAR(30)	NULL		,
Report_Date TIMESTAMP	NULL		,
Furnisher	VARCHAR(255)	NULL		,
Account	VARCHAR(3)	NULL		,
Category	VARCHAR(255)	NULL		,
ChesterPA	bytea	NULL		,
AllenTX	bytea	NULL		,
AtlantaGA	bytea	NULL		
);

/* SELECT EVERYTHING FROM TABLE */
select * from accounthistory;

/* INSERT TEST RECORD */
INSERT INTO accounthistory (
	reference,
	report_date,
	furnisher,
	account,
	category,
	chesterpa,
	allentx,
	atlantaga
) VALUES(
	'BR54898847',
	'2024/05/23',
	'AZ/ SYNCB/CCDSTR',
	'000',
	'Account #:',
	'{"timeline":[{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"May","year":"24","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Apr","year":"24","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Mar","year":"24","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Feb","year":"24","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Jan","year":"24","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Dec","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Nov","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Oct","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Sep","year":"23","rating":"30"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Aug","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Jul","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Jun","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"May","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Apr","year":"23","rating":"30"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Mar","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Feb","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Jan","year":"23","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Dec","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Nov","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Oct","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Sep","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Aug","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Jul","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"ChesterPA","month":"Jun","year":"22","rating":""}]}'::bytea,
	'{"timeline":[{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"May","year":"24","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Apr","year":"24","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Mar","year":"24","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Feb","year":"24","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Jan","year":"24","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Dec","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Nov","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Oct","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Sep","year":"23","rating":"30"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Aug","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Jul","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Jun","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"May","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Apr","year":"23","rating":"30"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Mar","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Feb","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Jan","year":"23","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Dec","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Nov","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Oct","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Sep","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Aug","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Jul","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AllenTX","month":"Jun","year":"22","rating":""}]}',
	'{"timeline":[{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"May","year":"24","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Apr","year":"24","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Mar","year":"24","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Feb","year":"24","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Jan","year":"24","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Dec","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Nov","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Oct","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Sep","year":"23","rating":"30"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Aug","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Jul","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Jun","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"May","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Apr","year":"23","rating":"30"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Mar","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Feb","year":"23","rating":"OK"},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Jan","year":"23","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Dec","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Nov","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Oct","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Sep","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Aug","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Jul","year":"22","rating":""},{"reference":"BR54898847","furnisher":"","account":"000","agency":"AtlantaGA","month":"Jun","year":"22","rating":""}]}'
) RETURNING * ;

/* SELECT EVERYTHING FROM accounthistory TABLE */
select * from accounthistory;

/* SELECT atlantaga COLUMN FROM accounthistory TABLE */
select atlantaga from accounthistory;

/* SELECT json formatted version of 'timeline' array IN atlantaga COLUMN FROM accounthistory TABLE */
select encode(atlantaga,'escape')::json->'timeline' from accounthistory;

/* 👹 SELF DESTRUCT 👹 */
DROP table accounthistory;