package com.symund.runners;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

    @RunWith(Cucumber.class)
    @CucumberOptions(
            plugin = {
                   "pretty",
                   "html:target/cucumber.html",
                    "json:target/reports/cucumber.json",
                    "rerun:target/reports/cucumber-report.txt",
                    "me.jvt.cucumber.report.PrettyReports:target/cucumber"
            },
            features = "src/test/resources/features", // feature path content
            glue = "com/symund/step_definitions", // step def. path source
            dryRun = true,
            tags = "",
            publish = false


    )

    public class CukesRunner{

    }


