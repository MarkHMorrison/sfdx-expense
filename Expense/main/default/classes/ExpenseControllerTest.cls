@isTest
private class ExpenseControllerTest {

    @isTest
    static void test_controller() {

        Test.startTest();

        Expense__c expense = new Expense__c(
            Client__c = 'Test Client',
            Amount__c = 100.0,
            Date__c = Date.today()
        );

        Expense__c savedExpense = ExpenseController.saveExpense( expense );

        List<Expense__c> expenses = ExpenseController.getExpenses();

        Test.stopTest();

        System.assertEquals( 1, expenses.size() );
        System.assertEquals( savedExpense.Id, expenses[0].Id );

    }

}
