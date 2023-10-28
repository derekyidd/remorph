CREATE or replace PROCEDURE outer_sp1()
...
AS
$$
    insert 'osp1_alpha';
    BEGIN WORK;
    insert 'osp1_beta';
    CALL inner_sp2();
    INSERT 'osp1_delta';
    COMMIT WORK;
    INSERT 'osp1_omega';
$$;

CREATE or replace PROCEDURE inner_sp2()
...
AS
$$
    BEGIN WORK;
    insert 'isp2';
    -- Missing COMMIT, so implicitly rolls back!
$$;

CALL outer_sp1();

SELECT * FROM st;