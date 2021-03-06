@isTest
Public Class HonorariumInformation_TEST
{
    static testmethod void HonorariumInformation()
    {
        Profile p = [SELECT Id FROM Profile WHERE Name='System Administrator'];
        User u = new User();
        u.Alias = 'email'; 
        u.Email='email@email.com';
        u.EmailEncodingKey='UTF-8';
        u.LastName='Testing'; 
        u.LanguageLocaleKey='en_US'; 
        u.LocaleSidKey='en_US';
        u.ProfileId = p.Id;
        u.TimeZoneSidKey='America/Los_Angeles';
        u.UserName='email@testcoverage.com';
        insert u;
        Test.StartTest();
        System.runAs(u){        

        NOFA_Group__c ng =  new NOFA_Group__c();
        ng.Name__c = 'qwe';
        ng.Review_of__c = 'Application';
        ng.Review_Type__c = 'Staff';
        ng.Status__c = 'Pending';
        insert ng;
        
        Honorarium_Information__c hi = new Honorarium_Information__c();
        hi.NOFA_Group__c = ng.id;
        hi.Payment_Amount__c = 123;
        hi.Position__c =  'Panel Coordinator';
        insert  hi;
        
        ApexPages.StandardController sc = new ApexPages.StandardController(hi);
        Honorarium cpa = new Honorarium(sc);
                Test.StopTest();
        
        
    }
    }
}