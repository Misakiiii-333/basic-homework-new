CREATE TABLE new_agents AS
SELECT DISTINCT agents.*
FROM 
    agents,customer
WHERE 
    agents.WORKING_AREA = 'LONDON'
AND 
    customer.CUST_COUNTRY = 'UK'
AND 
    agents.AGENT_CODE = customer.AGENT_CODE;

ALTER TABLE new _agents ADD PRIMARY KEY(AGENT_CODE);
