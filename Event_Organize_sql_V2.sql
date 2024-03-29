SELECT P.PROGRAM_ID AS ID,S.STATUS_NAME,
P.ACTION_PLAN_ID,'PROGRAM' IS_ACTIVITY, P.PROGRAM_NAME AS NAME, P.YEAR_ID,P.PLANNED_MONTH, P.CREATED_BY , P.CREATED_ON 
from BpmDevDbApp.DBO.CSLCES_PROGRAM 
P JOIN BpmDevDbApp.DBO.GBLSHS_STATUSES S ON S.STATUS_ID = P.STATUS_ID
WHERE
P.PROGRAM_NAME='test 8' AND
P.ACTION_PLAN_ID='2' AND
P.PLANNED_MONTH='6' AND
P.PROGRAM_REF_NO='EVPK00251' AND
P.PROGRAM_CODE='EV00145' AND
P.PACKAGE_ID='2099' AND
P.YEAR_ID='1' AND 
S.STATUS_NAME = 'Approved'
UNION
SELECT E.EVENT_ID,S.STATUS_NAME,
E.ACTION_PLAN_ID,'EVENT' AS ACTIVITY,E.TITLE_EN,E.YEAR_ID,E.PLANNED_MONTH,E.CREATED_BY, E.CREATED_ON 
from BpmDevDbApp.DBO.CSLCES_EVENT_DETAIL 
E JOIN BpmDevDbApp.DBO.GBLSHS_STATUSES S ON S.STATUS_ID = E.STATUS_ID
WHERE
E.TITLE_EN='test 8'AND
E.ACTION_PLAN_ID='2'AND
E.PLANNED_MONTH='6' AND
E.EVENT_REF_NO='EVPK00251' AND
E.EVENT_CODE='EV00145' AND
E.PACKAGE_ID='2099' AND
E.YEAR_ID='1' AND 
S.STATUS_NAME = 'Approved'
ORDER BY CREATED_ON ASC,CREATED_BY DESC