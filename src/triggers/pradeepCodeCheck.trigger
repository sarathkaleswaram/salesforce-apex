trigger pradeepCodeCheck on Contact (After Update) {

    BatchPradeepCode bpc = new BatchPradeepCode();
    database.executeBatch(bpc);
}