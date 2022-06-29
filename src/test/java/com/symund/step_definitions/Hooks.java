package com.symund.step_definitions;

import com.symund.utilities.Driver;
import io.cucumber.java.After;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

public class Hooks {

    @After // import from cucumber

    public void teardown(Scenario scenario){

       TakesScreenshot ts = (TakesScreenshot) Driver.getDriver();
        byte[] screenshot = ts.getScreenshotAs(OutputType.BYTES);

        scenario.attach(screenshot, "image/png", scenario.getName());

        Driver.closeDriver();
    }

}
