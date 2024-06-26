CREATE DATABASE demo ON CLUSTER my_cluster

CREATE TABLE demo.repli ON CLUSTER 'my_cluster' (
    id UInt32,
    name String
) ENGINE = ReplicatedMergeTree('/clickhouse/tables/{shard}/demo/repli', '{replica}')
ORDER BY id;

INSERT INTO demo.repli (id, name)
VALUES
    (1, 'Ejemplo 1');