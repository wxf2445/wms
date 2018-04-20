package com.zlzkj.app.flyway;

import javax.sql.DataSource;

import org.flywaydb.core.Flyway;

import org.flywaydb.core.api.FlywayException;

public class FlywayMigration {

    private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {

        this.dataSource = dataSource;

    }

    public void migrate() {

        Flyway flyway = new Flyway();

        flyway.setDataSource(dataSource);

        flyway.setLocations("db"); // 设置flyway扫描sql升级脚本、java升级脚本的目录路径或包路径（表示是src/main/resources/flyway下面，前缀默认为src/main/resources，因为这个路径默认在classpath下面）

        flyway.setEncoding("UTF-8");  // 设置sql脚本文件的编码

        flyway.setOutOfOrder(true);

        //flyway.setDataSource(dataSource);

        //flyway.setSchemas("flywaydemo"); // 设置接受flyway进行版本管理的多个数据库

        //flyway.setTable("schema_version"); // 设置存放flyway metadata数据的表名

        //flyway.setValidationMode(ValidationMode.ALL); // 设置执行migrate操作之前的validation行为

        //flyway.setValidationErrorMode(ValidationErrorMode.FAIL); // 设置当validation失败时的系统行为

        // 设置当validation失败时的系统行为

        try {

            //flyway.setInitOnMigrate(true);
            flyway.setBaselineOnMigrate(true);

            flyway.migrate();

        } catch (FlywayException e) {

            flyway.repair();

            e.printStackTrace();

        }

    }

}