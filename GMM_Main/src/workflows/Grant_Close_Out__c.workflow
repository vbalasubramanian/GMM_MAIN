<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Grant_Close_Out_Grant_Officer</fullName>
        <description>Grant Close Out - Grant Officer</description>
        <protected>false</protected>
        <recipients>
            <field>Grants_Officer_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/GrantCloseOut_GrantsOfficer</template>
    </alerts>
    <alerts>
        <fullName>Grant_Closed_Alert</fullName>
        <description>Grant Closed Alert</description>
        <protected>false</protected>
        <recipients>
            <field>AR_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>PD_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Grant_Closed_Notification</template>
    </alerts>
    <alerts>
        <fullName>Grant_Closeout_Certification_Alert_NGA</fullName>
        <description>Grant Closeout Certification Alert NGA</description>
        <protected>false</protected>
        <recipients>
            <field>Grants_Officer_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Program_Officer_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Grant_CloseOut</template>
    </alerts>
    <alerts>
        <fullName>Grant_Closeout_Certification_Alert_Non_NGA</fullName>
        <description>Grant Closeout Certification Alert Non NGA</description>
        <protected>false</protected>
        <recipients>
            <field>Program_Officer_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Grant_CloseOut</template>
    </alerts>
    <alerts>
        <fullName>Project_Completion_Report_due_date_is_90_days_after_the_agreement_period_end_dat</fullName>
        <description>Project Completion Report due date is 90 days after the agreement period end date.</description>
        <protected>false</protected>
        <recipients>
            <recipient>avasili@plan-sys.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/closeout_notification_to_NCCC_grantee</template>
    </alerts>
    <alerts>
        <fullName>notification_to_NCCC_grantees_24_hours_after_the_project_completion_date</fullName>
        <description>Email notification to NCCC grantees 24 hours after the project completion date</description>
        <protected>false</protected>
        <recipients>
            <recipient>kyama@plan-sys.com.po</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/closeout_notification_to_NCCC_grantee</template>
    </alerts>
    <fieldUpdates>
        <fullName>Assign_tasks_to_true</fullName>
        <field>Assign_Tasks__c</field>
        <literalValue>1</literalValue>
        <name>Assign tasks to true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>GrantCloseOutExpired</fullName>
        <field>Status__c</field>
        <literalValue>Expired</literalValue>
        <name>GrantCloseOutExpired</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>GrantStatusUpdate</fullName>
        <field>Status__c</field>
        <literalValue>In Progress</literalValue>
        <name>GrantStatusUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateCloseOutToActive</fullName>
        <field>Status__c</field>
        <literalValue>Active</literalValue>
        <name>UpdateCloseOutToActive</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateGrantExpired</fullName>
        <field>Status__c</field>
        <literalValue>Expired</literalValue>
        <name>UpdateGrantExpired</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateToActive</fullName>
        <field>Status__c</field>
        <literalValue>Active</literalValue>
        <name>UpdateToActive</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateWaiverApproved</fullName>
        <field>Waiver_Approved__c</field>
        <literalValue>Yes</literalValue>
        <name>UpdateWaiverApproved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Grant Close out Certification - Non NGA</fullName>
        <actions>
            <name>Grant_Closeout_Certification_Alert_Non_NGA</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Grant_Close_Out__c.Grant_Type__c</field>
            <operation>equals</operation>
            <value>Non NGA Grant</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Grant Close out Notifications - NGA</fullName>
        <actions>
            <name>Grant_Closeout_Certification_Alert_NGA</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Grant_Close_Out__c.Grant_Type__c</field>
            <operation>equals</operation>
            <value>NGA Grant</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Grant Closed Rule</fullName>
        <actions>
            <name>Grant_Closed_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Grant_Close_Out__c.Status__c</field>
            <operation>equals</operation>
            <value>Closed</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>GrantClose Task Assign</fullName>
        <active>true</active>
        <formula>And(Assign_Tasks__c ==false, Project_Period_End_Date__c != null)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Assign_tasks_to_true</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Grant_Close_Out__c.Project_Period_End_Date__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>GrantCloseOut_GrantsOfficer</fullName>
        <actions>
            <name>Grant_Close_Out_Grant_Officer</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Grant_Close_Out__c.Name</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>GrantStatusUpdate</fullName>
        <actions>
            <name>GrantStatusUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Award_Reporting_Requirements_Met__c )&amp;&amp; ISPICKVAL( Award_Reporting_Requirements_Met__c , &apos;Yes&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>MakeCloseOutExpired</fullName>
        <actions>
            <name>GrantCloseOutExpired</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>IF( Project_Period_End_Date__c &lt; TODAY(), True, False)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MakeRecordActive</fullName>
        <actions>
            <name>UpdateCloseOutToActive</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>IF( (ISPICKVAL(Status__c, &apos;Not Started&apos;)||ISPICKVAL(Status__c, &apos;&apos;)) &amp;&amp; NOT (ISNEW() ),True,False)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>UpdateGrantCloseOutStatus</fullName>
        <actions>
            <name>UpdateGrantExpired</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Grant_Close_Out__c.Project_Period_End_Date__c</field>
            <operation>lessThan</operation>
            <value>TODAY</value>
        </criteriaItems>
        <criteriaItems>
            <field>Grant_Close_Out__c.Status__c</field>
            <operation>notEqual</operation>
            <value>Closed</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>UpdateGrantStatus</fullName>
        <actions>
            <name>UpdateToActive</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Grant_Close_Out__c.Project_Period_End_Date__c</field>
            <operation>greaterOrEqual</operation>
            <value>TODAY</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>WaiverApproved</fullName>
        <actions>
            <name>UpdateWaiverApproved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Master_Award__c.Waiver_Approved__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>closeout notification to NCCC grantee</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Grant_Close_Out__c.Name</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Project_Completion_Report_due_date_is_90_days_after_the_agreement_period_end_dat</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Grant_Close_Out__c.Project_Period_End_Date__c</offsetFromField>
            <timeLength>90</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>notification_to_NCCC_grantees_24_hours_after_the_project_completion_date</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Grant_Close_Out__c.Project_Period_End_Date__c</offsetFromField>
            <timeLength>24</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Ability_to</fullName>
        <assignedTo>kyama@plan-sys.com.spo</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>90</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Grant_Close_Out__c.Project_Period_End_Date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Ability to perform grant closeout</subject>
    </tasks>
    <tasks>
        <fullName>Perform_a_Grant_Close_out</fullName>
        <assignedTo>avasili@plan-sys.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>105</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Grant_Close_Out__c.Project_Period_End_Date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Perform a Grant Close out</subject>
    </tasks>
    <tasks>
        <fullName>Perform_a_Grant_Close_out_task</fullName>
        <assignedTo>smandra@plan-sys.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>90</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Grant_Close_Out__c.Project_Period_End_Date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Perform a Grant Close out task</subject>
    </tasks>
</Workflow>