SELECT TO_TIMESTAMP('2013-05-08T23:39:20.123-07:00') AS "TIME_STAMP1",
         DATE_PART(EPOCH_SECOND, "TIME_STAMP1") AS "EXTRACTED EPOCH SECOND";